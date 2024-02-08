-- AnalystBuilder
-- https://www.analystbuilder.com/questions/linkedin-famous-oQMdb

WITH cte AS(SELECT *,
(actions/impressions)*100 AS popular
FROM linkedin_posts)
SELECT post_id, popular
FROM cte
WHERE popular>1
ORDER BY popular DESC;

-- AnalystBuilder
-- https://www.analystbuilder.com/questions/company-wide-increase-TytwW

SELECT *,
CASE WHEN pay_level=1 THEN (salary+((salary*10)/100))
     WHEN pay_level=2 THEN (salary+((salary*15)/100))
     WHEN pay_level=3 THEN (salary+((salary*200)/100))
END AS new_salary
FROM employees;