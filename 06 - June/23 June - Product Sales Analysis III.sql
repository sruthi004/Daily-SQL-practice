-- Leetcode
-- https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50

WITH CTE AS
(SELECT product_id, year, quantity, price, RANK() OVER(partition by product_id order by year) as rn
FROM Sales)
SELECT product_id, year as first_year, quantity, price
FROM CTE
WHERE rn = 1;