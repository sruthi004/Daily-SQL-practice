-- LeetCode
-- https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50

SELECT month,country,COUNT(country) AS trans_count ,
SUM(IF (state='approved',1,0)) AS approved_count, SUM(amount) AS trans_total_amount ,
SUM(IF (state='approved',amount,0)) AS approved_total_amount
FROM
(SELECT *,SUBSTRING(trans_date,1,7) AS month   
FROM Transactions) AS tab
GROUP BY month,country;