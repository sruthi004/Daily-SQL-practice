-- AnalystBuilder
-- https://www.analystbuilder.com/questions/bad-bonuses-Eqhib

SELECT employee_id, name
  FROM employee
  LEFT JOIN bonus
  ON employee.employee_id=bonus.emp_id
  WHERE bonus.emp_id IS NULL
  ORDER BY employee_id;