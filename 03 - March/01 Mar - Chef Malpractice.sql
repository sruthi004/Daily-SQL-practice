-- AnalystBuilder
-- https://www.analystbuilder.com/questions/chef-malpractice-zNJhi

SELECT chef_name,most_return_orders
  FROM
    (SELECT  chef_name, 
    COUNT(order_returned) AS most_return_orders,
    RANK() OVER (ORDER BY most_return_orders DESC) AS ranks
    FROM orders
    WHERE order_returned = 'Y'
    GROUP BY chef_name)AS temp
  WHERE ranks = 1
  ORDER BY chef_name;