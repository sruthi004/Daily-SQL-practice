-- StrataScratch
-- https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=1

SELECT worker_title FROM worker
JOIN
title
ON worker.worker_id=title.worker_ref_id
WHERE salary = (SELECT MAX(salary) FROM worker)
ORDER BY salary DESC;