-- AnalystBuilder
-- https://www.analystbuilder.com/questions/domain-knowledge-tSzwJ

SELECT domain, COUNT(domain)
  FROM
  (SELECT email_address,
    REGEXP_REPLACE(SUBSTRING_INDEX(email_address, '@', -1), '.com', '') AS domain
    FROM emails
    WHERE email_address LIKE '%.com') AS temp
  GROUP BY domain
  ORDER BY COUNT(domain) DESC, domain DESC;