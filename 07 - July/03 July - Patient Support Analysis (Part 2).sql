-- DataLemur
-- https://datalemur.com/questions/uncategorized-calls-percentage

SELECT
ROUND(CAST((SUM(CASE WHEN call_category IS NULL OR call_category='n/a' THEN 1
ELSE 0 
END)) AS decimal) / CAST(COUNT(*) AS decimal)*100, 1) AS uncategorised_call_pct
FROM callers;