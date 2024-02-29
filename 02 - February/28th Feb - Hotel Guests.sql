-- AnalystBuilder
-- https://www.analystbuilder.com/questions/hotel-guests-QFNfJ

SELECT COUNT(customer_id) AS late_customers
  FROM
(SELECT *,
  CAST(check_out AS TIME) - CAST('10:00:00' AS TIME) AS diff_time
  FROM hotel_guests) AS temp
  WHERE diff_time>0;