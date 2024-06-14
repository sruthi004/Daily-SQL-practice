-- Leetcode
-- https://leetcode.com/problems/immediate-food-delivery-ii/description/

SELECT ROUND(SUM(immediate)/COUNT(rowss)*100,2) AS immediate_percentage FROM
(SELECT *,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date) AS rowss,
IF(order_date = customer_pref_delivery_date, 1, 0) AS immediate
FROM Delivery) AS temp
WHERE rowss=1;