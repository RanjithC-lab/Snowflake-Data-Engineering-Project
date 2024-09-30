-- Calculate average premium by region
SELECT Region_Code, AVG(Annual_Premium) AS avg_premium
FROM TrainData
GROUP BY Region_Code;
