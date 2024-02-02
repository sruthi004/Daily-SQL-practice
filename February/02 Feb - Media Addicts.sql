-- AnalystBuilder
-- https://www.analystbuilder.com/questions/media-addicts-deISZ

SELECT first_name FROM users
JOIN user_time
ON user_time.user_id = users.user_id
WHERE media_time_minutes >
(SELECT AVG(media_time_minutes) FROM user_time)
ORDER BY first_name;