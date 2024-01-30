-- InterviewBit
-- https://www.interviewbit.com/problems/minimum-gpa/

WITH cte AS 
(SELECT DepartmentName, MIN(GPA)
FROM Students
JOIN Departments
ON Students.DepartmentId = Departments.DepartmentId
GROUP BY DepartmentName)
SELECT CONCAT(DepartmentName,',', Name, ',',GPA) AS A FROM
(SELECT DepartmentName, Name, GPA
FROM Students
JOIN Departments
ON Students.DepartmentId = Departments.DepartmentId) AS temp
WHERE (DepartmentName,GPA) IN (SELECT * FROM cte)
ORDER BY DepartmentName ASC;