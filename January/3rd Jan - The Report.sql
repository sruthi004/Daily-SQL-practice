-- HackerRank
-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

WITH cte AS(SELECT Name, Grade, Marks
FROM Students, Grades
WHERE Min_Mark<=Marks AND Max_Mark>=Marks)
SELECT CASE
WHEN Grade<8 THEN NULL
ELSE Name
END AS Name_new, 
Grade, Marks
FROM cte
ORDER BY Grade DESC,Name ASC, Marks ASC;