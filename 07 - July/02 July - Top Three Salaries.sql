-- DataLemur
-- https://datalemur.com/questions/sql-top-three-salaries

SELECT department_name,name,salary FROM
(SELECT name,department_name,salary,
DENSE_RANK() OVER (PARTITION BY employee.department_id ORDER BY salary DESC) AS top
FROM employee
JOIN department 
ON department.department_id=employee.department_id) AS temp
WHERE top<4
ORDER BY department_name,salary DESC,name ASC;