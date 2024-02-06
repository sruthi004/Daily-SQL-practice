-- AnalystBuilder
-- https://www.analystbuilder.com/questions/kellys-3rd-purchase-kFaIE

WITH cte AS(SELECT *,
RANK() OVER (PARTITION BY customer_id ORDER BY transaction_id) AS a
FROM purchases)
SELECT customer_id, transaction_id, amount,
amount-((amount*33)/100) AS discounted_amount
FROM cte
WHERE a = 3
ORDER BY customer_id;