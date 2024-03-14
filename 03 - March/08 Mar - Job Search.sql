-- AnalystBuilder
-- https://www.analystbuilder.com/questions/job-search-eaiXU

SELECT job_id,job_title,job_salary,required_skills
  FROM
  (SELECT *,
    REGEXP_REPLACE(SUBSTRING_INDEX(job_salary,'-',1),"[^0-9]", "")  AS r
    FROM job_listings
    WHERE job_title LIKE "Lead%" OR job_title LIKE "Senior%"
    AND required_skills LIKE "%SQL" OR required_skills LIKE "%Python%") AS temp
  WHERE r>85000;