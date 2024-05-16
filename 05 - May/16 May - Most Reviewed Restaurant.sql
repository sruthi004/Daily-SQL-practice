-- AnalystBuilder
-- https://www.analystbuilder.com/questions/most-reviewed-restaurant-dkcJO

SELECT restaurant, COUNT(comment) AS counts, AVG(rating) AS rating
  FROM restaurant_reviews
  GROUP BY restaurant
  ORDER BY counts DESC, rating DESC
  LIMIT 1;