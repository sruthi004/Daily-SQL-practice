-- AnalystBuilder
-- https://www.analystbuilder.com/questions/customer-transactions-ONbZX

SELECT * FROM
  (SELECT customer_id, SUM(sale_amount) AS total_sales,
    RANK() OVER (ORDER BY total_sales DESC) AS ranks
    FROM customer_transactions
    WHERE SUBSTRING(sale_date,1,7) = '2021-01'
    GROUP BY customer_id
    ORDER BY SUM(sale_amount) DESC, customer_id) AS temp
  WHERE ranks<4;   