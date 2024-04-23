-- AnalystBuilder
-- https://www.analystbuilder.com/questions/tmi-too-much-information-VyNhZ

SELECT customer_id,
  SUBSTRING_INDEX(full_name, ' ', 1) AS first_name
  FROM customers;