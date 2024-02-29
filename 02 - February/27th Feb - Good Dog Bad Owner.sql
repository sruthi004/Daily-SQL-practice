-- AnalystBuilder
-- https://www.analystbuilder.com/questions/good-dog-bad-owner-qjLXc

WITH cte AS
  (SELECT owner_name, MIN(total) AS total 
  FROM
  (SELECT owner_name,dog_name, SUM(times_walked) AS total
    FROM walks
    GROUP BY owner_name,dog_name) AS temp
  GROUP BY owner_name)
SELECT owner_name,
  CASE WHEN total>4 THEN 'Good Owner'
  ELSE 'Bad Owner'
  END AS type_of_owner
  FROM cte
  ORDER BY owner_name;
