-- AnalystBuilder
-- https://www.analystbuilder.com/questions/basketball-greatness-WVlKy

SELECT *,
DENSE_RANK() OVER (ORDER BY points DESC) AS Ranking
FROM player_totals;