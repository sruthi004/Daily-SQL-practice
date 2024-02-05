-- AnalystBuilder
-- https://www.analystbuilder.com/questions/temperature-fluctuations-ftFQu

WITH cte AS (SELECT *,
LAG(temperature) OVER (ORDER BY date ASC) AS prev_temp
FROM temperatures)
SELECT date
FROM cte
WHERE temperature>prev_temp;