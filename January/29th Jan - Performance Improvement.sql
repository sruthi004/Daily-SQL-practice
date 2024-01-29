-- InterviewBit
-- https://www.interviewbit.com/problems/performance-improvement/

SELECT * FROM(SELECT 
CASE
WHEN Marks>(SELECT Marks FROM Tests AS t WHERE TestId = main.TestId-1) THEN TestId
END AS TestId
FROM Tests AS main) AS temp
WHERE TestId IS NOT NULL;