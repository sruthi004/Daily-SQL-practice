-- AnalystBuilder
-- https://www.analystbuilder.com/questions/duplicate-emails-EPzzg

SELECT email, COUNT(email) AS counts
  FROM emails
  GROUP BY email
  HAVING COUNT(email)>1
  ORDER by email;