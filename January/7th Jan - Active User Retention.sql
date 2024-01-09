-- DataLemur
-- https://datalemur.com/questions/user-retention

WITH cte AS(SELECT EXTRACT(MONTH FROM event_date) AS month,* FROM user_actions
WHERE user_id IN (SELECT DISTINCT(user_id) FROM user_actions
WHERE EXTRACT(MONTH FROM event_date)=6))
SELECT EXTRACT(MONTH FROM event_date) AS month,COUNT(DISTINCT(user_id))AS monthly_active_users FROM cte
GROUP BY EXTRACT(MONTH FROM event_date)
HAVING EXTRACT(MONTH FROM event_date)=7;