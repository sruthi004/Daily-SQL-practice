-- AnalystBuilder
-- https://www.analystbuilder.com/questions/returning-customers-iwicX

WITH cte AS(SELECT customer_id, (lead_date-visit_date) AS diff
FROM
(SELECT *,
LEAD(visit_date) OVER (PARTITION BY customer_id ORDER BY visit_date) AS lead_date
FROM customers 
ORDER BY customer_id, visit_date) AS temp)
SELECT DISTINCT(customer_id)
FROM cte
WHERE diff<6;