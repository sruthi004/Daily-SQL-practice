-- AnalystBuilder
-- https://www.analystbuilder.com/questions/pepperoni-flation-PleiU

SELECT COUNT(*)*0.25 AS Savings
  FROM orders
  WHERE pizza_order='Pepperoni';