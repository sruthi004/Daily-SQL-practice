-- AnalystBuilder
-- https://www.analystbuilder.com/questions/boss-qXnDP

SELECT b2.employee_name AS  employee_name, b1.employee_name AS boss_name
  FROM boss AS b1
  RIGHT JOIN boss AS b2
  ON b1.employee_id=b2.boss_id
  ORDER BY employee_name;