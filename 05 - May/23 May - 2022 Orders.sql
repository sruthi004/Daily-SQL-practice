-- AnalystBuilder
-- https://www.analystbuilder.com/questions/2022-orders-WsKLr

SELECT user_id 
  FROM users
  JOIN orders
  ON users.user_id=orders.buyer_id
  WHERE EXTRACT(YEAR FROM join_date)=2022 AND
  EXTRACT(YEAR FROM order_date)=2022;