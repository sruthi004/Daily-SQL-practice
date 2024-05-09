-- AnalystBuilder
-- https://www.analystbuilder.com/questions/wealthy-customers-VaBYt

SELECT COUNT(DISTINCT(customer_id)) AS number_of_customers
  FROM transactions
  WHERE bill_total>500;