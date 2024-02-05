-- AnalystBuilder
-- https://www.analystbuilder.com/questions/cake-vs-pie-rSDbF

WITH cte AS (
SELECT *,
FIRST_VALUE(product) OVER(PARTITION BY date_sold ORDER BY amount_sold DESC) AS most_sold_prod,
LEAD(amount_sold) OVER(PARTITION BY date_sold ORDER BY amount_sold DESC ) AS min_value
FROM 
(SELECT date_sold,product,COALESCE(amount_sold,0) AS amount_sold FROM desserts) AS temp)
SELECT date_sold,
amount_sold- min_value AS diff_cp, most_sold_prod
FROM cte
WHERE min_value IS NOT NULL;