-- AnalystBuilder
-- https://www.analystbuilder.com/questions/running-total-MBQhR

SELECT gender,dates,points,
  SUM(points) OVER (PARTITION BY gender ORDER BY dates ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_totals
  FROM points
  ORDER BY gender,dates;