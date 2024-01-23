-- DataLemur
-- https://datalemur.com/questions/sql-third-transaction

WITH tab as (
SELECT *,
row_number() OVER(PARTITION BY user_id 
          ORDER BY transaction_date) as ro
FROM transactions)
SELECT user_id,spend,transaction_date
FROM tab
WHERE ro=3;