-- AnalystBuilder
-- https://www.analystbuilder.com/questions/tech-layoffs-CpLXE

SELECT company, 
  ROUND(((employees_fired/company_size)*100), 2) AS laid_off
  FROM tech_layoffs
  ORDER BY company;