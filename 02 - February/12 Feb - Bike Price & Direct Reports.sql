-- AnalystBuilder
-- https://www.analystbuilder.com/questions/bike-price-zKcOR

SELECT ROUND(AVG(bike_price),2) AS average
FROM inventory
WHERE bike_price IS NOT NULL AND bike_sold = 'Y';

-- AnalystBuilder
-- https://www.analystbuilder.com/questions/direct-reports-qQoVA

WITH cte AS(SELECT dr2.position AS position,dr1.managers_id AS managers_id,
dr1.employee_id AS employee_id
FROM direct_reports dr1
INNER JOIN direct_reports dr2
ON dr1.managers_id = dr2.employee_id)
SELECT managers_id,position, COUNT(employee_id)
FROM cte
WHERE position LIKE '%Manager%'
GROUP BY managers_id,position;