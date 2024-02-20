-- AnalystBuilder
-- https://www.analystbuilder.com/questions/highest-grade-UrYEc

WITH cte AS(SELECT *,
MAX(grade) OVER (PARTITION BY student_name ORDER BY grade DESC) AS top_grade
FROM highest_grade
ORDER BY student_name)
SELECT student_name,MIN(class_id),top_grade
FROM cte
WHERE grade=top_grade
GROUP BY student_name;