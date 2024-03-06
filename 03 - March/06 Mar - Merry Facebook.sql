-- AnalystBuilder
-- https://www.analystbuilder.com/questions/merry-facebook-DLPCG

SELECT actions, COUNT(actions) AS count_action,
  RANK() OVER (ORDER BY count_action DESC) AS Ranks
  FROM facebook
  WHERE dates = '2023-12-25'
  GROUP BY actions
  ORDER BY COUNT(actions) DESC, actions;