-- DataLemur
-- https://datalemur.com/questions/odd-even-measurements

WITH tab as (
SELECT CAST(measurement_time AS DATE) as m_date,*,
ROW_NUMBER() OVER(PARTITION BY CAST(measurement_time AS DATE) 
             ORDER BY measurement_time) AS row
FROM measurements)
SELECT m_date,
 SUM(measurement_value) FILTER(WHERE MOD(row,2) != 0) AS odd_sum ,
 SUM(measurement_value) FILTER (WHERE MOD(row,2) = 0) AS even_sum
FROM tab
GROup BY m_date;