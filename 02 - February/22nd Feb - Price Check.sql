-- AnalystBuilder
-- https://www.analystbuilder.com/questions/price-check-MLrTj

WITH cte AS(SELECT *,
FIRST_VALUE(dates) OVER (PARTITION BY product_id ORDER BY dates DESC) AS date_
FROM price_check
WHERE dates < '2022-04-08')
SELECT product_id,price
FROM cte
WHERE dates=date_
ORDER BY product_id;