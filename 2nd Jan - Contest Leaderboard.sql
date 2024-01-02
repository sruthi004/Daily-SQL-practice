-- HackerRank
-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

WITH cte AS (
SELECT hacker_id,challenge_id, 
MAX(score) AS max_score
FROM Submissions
GROUP BY hacker_id,challenge_id
)
SELECT cte.hacker_id,Hackers.name,SUM(cte.max_score)
FROM cte
JOIN Hackers 
ON cte.hacker_id = Hackers.hacker_id
GROUP BY cte.hacker_id,Hackers.name
HAVING SUM(cte.max_score)>0
ORDER BY SUM(cte.max_score) DESC,cte.hacker_id ASC;