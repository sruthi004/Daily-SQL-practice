-- AnalystBuilder
-- https://www.analystbuilder.com/questions/senior-citizen-discount-fRxVJ

WITH cte AS(SELECT *,
TIMESTAMPDIFF(year,birth_date,'2023-01-01') AS age
FROM customers)
SELECT customer_id
FROM cte
WHERE age>54
ORDER BY customer_id;