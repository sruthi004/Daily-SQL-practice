-- DataLemur
-- https://datalemur.com/questions/supercloud-customer

SELECT DISTINCT(customer_id) FROM
(WITH cte AS (SELECT products.product_id AS prod,customer_id,product_category,
CASE WHEN product_category='Analytics' THEN 1
     WHEN product_category='Containers' THEN 2
     WHEN product_category='Compute' THEN 3
END AS nums
FROM customer_contracts 
INNER JOIN
products
ON customer_contracts.product_id=products.product_id)
SELECT *,
SUM(nums) OVER(PARTITION BY customer_id) AS sums
FROM cte) AS tab
WHERE sums>5;