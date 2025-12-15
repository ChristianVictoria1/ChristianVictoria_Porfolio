SELECT * 
FROM wash_data
LIMIT 25;

-- Q1: -- Average spending per visit by service type

SELECT 
	ROUND(AVG(Spending_per_visit),2) AS avg_spent,
	Preferred_Service_Type AS service_type
FROM wash_data
GROUP BY Preferred_Service_Type
ORDER BY avg_spent DESC;

-- Q2: -- Identifying the highest spending customers for targeted marketing

SELECT 
	Spending_per_Visit AS Spending,
	Customer_loyalty AS Loyalty, 
	Preferred_Service_type AS Service_Type
FROM wash_data
ORDER BY Spending_per_Visit DESC 
LIMIT 10;

-- Q3: -- Analyzing the relationship between visit frequency and average spending

SELECT 
	Frequency_of_Washes AS visit_frequency, 
	ROUND(AVG(Spending_per_Visit),2) AS avg_spent
FROM wash_data
GROUP BY Frequency_of_Washes
ORDER BY Frequency_of_Washes;
