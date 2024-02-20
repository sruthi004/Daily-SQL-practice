-- AnalystBuilder
-- https://www.analystbuilder.com/questions/help-requests-gadzN

WITH cte AS(SELECT type,
SUM(CASE WHEN state='Completed' THEN 1 ELSE 0 END) AS Completed_requests,
SUM(CASE WHEN state!='Completed' THEN 1 ELSE 0 END) AS Incomplete_requests
FROM help_requests
GROUP BY type
ORDER BY type)
SELECT *,
(Completed_requests/(Completed_requests+Incomplete_requests))*100 AS percentage_of_completed_requests
FROM cte;