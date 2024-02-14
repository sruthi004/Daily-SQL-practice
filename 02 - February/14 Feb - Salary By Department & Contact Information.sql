-- AnalystBuilder
-- https://www.analystbuilder.com/questions/salary-by-department-zfUBz

SELECT department,first_name, last_name, salary,
AVG(salary) OVER (PARTITION BY department) AS dept_avg
FROM employee_salary
ORDER BY department,salary DESC;

-- AnalystBuilder
-- https://www.analystbuilder.com/questions/contact-information-zvEJd

SELECT first_name,last_name,
CASE WHEN email is NULL THEN CONCAT(LOWER(first_name), '.',LOWER(last_name),'@gmail.com')
  ELSE email
  END AS email
FROM people 
JOIN contacts
ON people.id = contacts.id
ORDER BY first_name;