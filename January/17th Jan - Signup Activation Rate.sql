-- DataLemur
-- https://datalemur.com/questions/signup-confirmation-rate

SELECT ROUND(con_rate/total,2)
FROM
(
SELECT 
ROUND(SUM(CASE
    WHEN signup_action='Confirmed' THEN 1
    WHEN signup_action='Not Confirmed' THEN 0
END),2) AS con_rate, COUNT(user_id) AS total
FROM texts
INNER JOIN 
emails
ON texts.email_id=emails.email_id) AS sub;