-- AnalystBuilder
-- https://www.analystbuilder.com/questions/shrink-flation-ohNJw

SELECT product_name,
  ROUND((new_size-original_size)/(original_size)*100) AS Size_Change_Percentage,
  ROUND((new_price-original_price)/(original_price)*100) AS Price_Change_Percentage,
  CASE WHEN original_size>new_size AND original_price<=new_price THEN 'True'
  ELSE 'False'
  END AS Shrinkflation_Flag
  FROM products
  ORDER BY product_name;