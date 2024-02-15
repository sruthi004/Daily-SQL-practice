-- AnalystBuilder
-- https://www.analystbuilder.com/questions/approved-transactions-HhRwZ

SELECT EXTRACT (MONTH FROM transaction_date) AS Months,
Country,
SUM(CASE WHEN state = 'Approved' THEN 1 ELSE 0 END) AS Approved_Transactions,
SUM(CASE WHEN state = 'Approved' THEN amount ELSE 0 END) AS Approved_Amount,
SUM(CASE WHEN state = 'Declined' THEN 1 ELSE 0 END) AS Chargebacks,
SUM(CASE WHEN state = 'Declined' THEN amount ELSE 0 END) AS Chargeback_Amount
FROM transactions
GROUP BY Country,EXTRACT (MONTH FROM transaction_date)
ORDER BY EXTRACT (MONTH FROM transaction_date);