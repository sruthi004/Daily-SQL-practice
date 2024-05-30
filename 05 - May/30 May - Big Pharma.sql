-- AnalystBuilder
-- https://www.analystbuilder.com/questions/big-pharma-tFfpy

SELECT *, ROUND(money_spent-money_made, 1) AS amount
  FROM big_pharma
  WHERE money_spent>money_made;