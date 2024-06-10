-- Leetcode
-- https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50

SELECT user_id,ROUND((confirm_count/total),2) AS confirmation_rate FROM(
    SELECT Signups.user_id AS user_id, COUNT(*) AS total,
    SUM(CASE WHEN action='confirmed' THEN 1
    ELSE 0
    END) AS confirm_count
    FROM Confirmations 
    RIGHT JOIN Signups 
    ON Signups.user_id = Confirmations.user_id  
    GROUP BY user_id) AS temp;