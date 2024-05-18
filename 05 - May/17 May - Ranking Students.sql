-- AnalystBuilder
-- https://www.analystbuilder.com/questions/ranking-students-oiUWe

SELECT *,
  DENSE_RANK() OVER (ORDER BY grade DESC) AS ranks
  FROM grades
  ORDER BY ranks, student_name;