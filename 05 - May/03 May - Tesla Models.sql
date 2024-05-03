-- AnalystBuilder
-- https://www.analystbuilder.com/questions/tesla-models-soJdJ

SELECT *,
  (car_price-production_cost)*cars_sold AS profit
  FROM tesla_models
  ORDER BY profit DESC
  LIMIT 1;