-- AnalystBuilder
-- https://www.analystbuilder.com/questions/2nd-highest-WTfAJ

SELECT department_name,employee_name,salary
  FROM
  (SELECT department_name,employee_name,salary,
    RANK() OVER (PARTITION BY department_name ORDER BY salary DESC) AS ranks
    FROM departments
    JOIN employees
    ON employees.department_id = departments.department_id) AS temp
  WHERE ranks = 2;