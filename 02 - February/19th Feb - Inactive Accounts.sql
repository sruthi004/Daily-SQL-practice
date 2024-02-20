-- AnalystBuilder
-- https://www.analystbuilder.com/questions/inactive-accounts-holLK

WITH cte AS (SELECT *,
FIRST_VALUE(activity_date) OVER (PARTITION BY user_id ORDER BY activity_date DESC) AS last_date
FROM users
ORDER BY user_id,activity_date)
SELECT DISTINCT(user_id)
FROM cte
WHERE last_date<'2022-01-01'
ORDER BY user_id;