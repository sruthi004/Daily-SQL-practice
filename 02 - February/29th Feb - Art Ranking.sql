-- AnalystBuilder
-- https://www.analystbuilder.com/questions/art-ranking-JzXXv

SELECT artist_id, total_score,
  RANK() OVER (ORDER BY total_score DESC) AS 'rank'
  FROM
(
  SELECT artist_id, SUM(score) AS total_score
  FROM rankings
  GROUP BY artist_id) AS temp;