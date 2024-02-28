-- AnalystBuilder
-- https://www.analystbuilder.com/questions/unfair-taxation-LDlmw

WITH cte AS(SELECT *,
  SUM(salary) OVER (PARTITION BY company_id) AS total_salary
  FROM taxes)
  SELECT company_id,employee_id,department,
  CASE 
  WHEN total_salary>200000 THEN salary-((salary*10)/100)
  WHEN total_salary>100000 AND total_salary<199000 THEN salary-((salary*25)/100)
  WHEN total_salary<99000 THEN salary-((salary*40)/100)
  END AS taxed_salary
  FROM cte;