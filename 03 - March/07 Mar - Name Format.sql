-- AnalystBuilder
-- https://www.analystbuilder.com/questions/name-format-ONXRK

SELECT
  CONCAT(CONCAT(UCASE(SUBSTRING(first_name,1,1)),LCASE(SUBSTRING(first_name,2))), ' ',
  CONCAT(UCASE(SUBSTRING(last_name,1,1)),LCASE(SUBSTRING(last_name,2)))) AS full_name
  FROM names
  ORDER BY first_name, last_name;