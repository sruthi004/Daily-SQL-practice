-- AnalystBuilder
-- https://www.analystbuilder.com/questions/krogers-members-FjyKN

SELECT 
  ROUND((SUM(CASE WHEN has_member_card = 'Y' THEN 1
  ELSE 0
  END))/
  (MAX(kroger_id))*100, 2) AS percent_of_Krogers_customers
  FROM customers;