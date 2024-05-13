-- AnalystBuilder
-- https://www.analystbuilder.com/questions/gamer-tags-ggMnJ

SELECT first_name,last_name,
  CONCAT(SUBSTRING(first_name,1,3),EXTRACT(YEAR FROM birth_date)) AS gamer_tag
  FROM gamer_tags
  ORDER BY gamer_tag;