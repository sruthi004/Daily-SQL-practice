-- AnalystBuilder
-- https://www.analystbuilder.com/questions/internet-outages-peiZS

SELECT isp_name,
  AVG(TIMESTAMPDIFF(minute,STR_TO_DATE(Start_Time, '%m/%d/%Y %H:%i'), STR_TO_DATE(End_Time, '%m/%d/%Y %H:%i'))) AS Average_Outage_Duration, 
  SUM(CASE WHEN End_Time IS NULL THEN 1 ELSE 0 END) AS Ongoing_Outages
  FROM isp_outages
  GROUP BY isp_name
  ORDER BY Average_Outage_Duration DESC;