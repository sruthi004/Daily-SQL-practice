-- AnalystBuilder
-- https://www.analystbuilder.com/questions/twitter-addiction-qzEkz

WITH cte AS(SELECT *,
TIMESTAMPDIFF(MINUTE, tweet_time, lead_time) AS minutes
FROM
    (SELECT *,
    LEAD(tweet_time) OVER (PARTITION BY twitter_id ORDER BY tweet_time) AS lead_time
    FROM twitter_addiction) AS temp)
SELECT twitter_id, AVG(minutes) AS average_time
FROM cte
GROUP BY twitter_id;