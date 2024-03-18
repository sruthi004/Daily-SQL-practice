-- AnalystBuilder
-- https://www.analystbuilder.com/questions/food-divides-us-GvhLL

SELECT region
  FROM
  (SELECT region, SUM(fast_food_millions) AS sum_amount
    FROM food_regions
    GROUP BY region
    ORDER BY sum_amount DESC
    LIMIT 1) AS temp;


