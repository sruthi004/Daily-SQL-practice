-- AnalystBuilder
-- https://www.analystbuilder.com/questions/computer-replacement-IjNgF

SELECT computer_id FROM
(SELECT *,  DATEDIFF("2023-01-01",date_activated)/365 AS years
  FROM computer_replacement) AS temp
  WHERE years>5;