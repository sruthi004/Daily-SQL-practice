-- AnalystBuilder
-- https://www.analystbuilder.com/questions/consecutive-visits-czsEs

WITH cte AS
(SELECT *,
(lead_date-visit_date) AS diff
FROM 
(SELECT names.id AS id,visit_date,name,
LEAD(visit_date) OVER (PARTITION BY names.id ORDER BY visit_date) AS lead_date
FROM dates
JOIN names
ON names.id=dates.id
ORDER BY names.id) AS temp)
SELECT id,name,SUM(diff)+1 AS con_visits
FROM cte
WHERE diff=1
GROUP BY id,name
ORDER BY SUM(diff)+1 DESC
LIMIT 1;