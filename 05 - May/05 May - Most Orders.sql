-- AnalystBuilder
-- https://www.analystbuilder.com/questions/most-orders-lPUKT

SELECT *
  FROM orders
  WHERE number_of_orders=(SELECT MAX(number_of_orders) FROM orders);