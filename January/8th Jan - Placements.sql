-- HackerRank
-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true

WITH cte AS(
SELECT Students.ID AS id,Students.Name AS name,
Friends.Friend_ID AS friend_id, p1.Salary AS friend_salary,p2.Salary AS salary
FROM Students
JOIN Friends
ON Students.ID = Friends.ID
JOIN Packages AS p1
ON Friends.Friend_ID = p1.ID
JOIN Packages p2
ON Students.ID = p2.ID)
SELECT name
FROM cte
WHERE friend_salary>salary
ORDER BY friend_salary;