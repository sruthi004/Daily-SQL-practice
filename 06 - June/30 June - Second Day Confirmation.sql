-- DataLemur
-- https://datalemur.com/questions/second-day-confirmation?utm_source=linkedin.com&utm_medium=social&utm_campaign=tiktok-2nd-day-conf

SELECT user_id
FROM (SELECT *, (action_date::DATE - signup_date::DATE) AS diff
FROM emails
JOIN texts
ON emails.email_id=texts.email_id
WHERE signup_action='Confirmed') AS temp
WHERE diff=1;