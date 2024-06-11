-- Leetcode
-- https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50

SELECT SUBSTRING(trans_date,1,7) AS month, country,
COUNT(state) AS trans_count, SUM(amount) AS trans_total_amount,
SUM(CASE WHEN state ='approved' THEN 1
ELSE 0
END) AS approved_count,
SUM(CASE WHEN state ='approved' THEN amount
ELSE 0
END) AS approved_total_amount 
FROM Transactions
GROUP BY SUBSTRING(trans_date,1,7), country ;