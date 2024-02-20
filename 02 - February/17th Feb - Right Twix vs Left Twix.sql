-- AnalystBuilder
-- https://www.analystbuilder.com/questions/right-twix-vs-left-twix-GIozA

SELECT 
ROUND((right_vote/total)*100,2) AS Right_Twix_Percentage,
ROUND((left_vote/total)*100,2) AS Left_Twix_Percentage
FROM
(SELECT *,
right_vote+left_vote AS total
FROM candy_poll) AS temp;