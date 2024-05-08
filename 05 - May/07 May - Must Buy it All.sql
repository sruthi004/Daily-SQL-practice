-- AnalystBuilder
-- https://www.analystbuilder.com/questions/must-buy-it-all-HZoGq

SELECT customer_id FROM
(SELECT customer_id, COUNT(DISTINCT(product_id)) AS counts
  FROM purchases
  GROUP BY customer_id) AS temp
  WHERE counts=4;