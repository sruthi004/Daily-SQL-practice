-- AnalystBuilder
-- https://www.analystbuilder.com/questions/make-it-cleaner-Ghbqf

SELECT
  CASE WHEN product_id<=0 THEN NULL
  ELSE product_id
  END AS product_id,
  CASE WHEN SUBSTRING(quantity_sold,1,1)='-' THEN 0
  ELSE quantity_sold
  END AS quantity_sold,
  CASE WHEN revenue IS NULL THEN (SELECT AVG(revenue) FROM dirty_data)
  ELSE revenue
  END AS revenue
  FROM dirty_data;