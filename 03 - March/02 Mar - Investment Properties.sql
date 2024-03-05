-- AnalystBuilder
-- https://www.analystbuilder.com/questions/investment-properties-heNto

SELECT property_id, profit_loss,
  SUM(profit_loss) OVER (ORDER BY purchase_price) AS running_total
  FROM  
  (SELECT *,
    estimated_sale_price-purchase_price AS profit_loss
    FROM investment_property
    ORDER by purchase_price) AS temp;