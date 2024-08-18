--Distribution of products by age category and gender
SELECT
	AgeCategory,
	Gender,
	Product,
	COUNT(*) Count
FROM treadmill_df
GROUP BY AgeCategory, Gender, Product
ORDER BY AgeCategory, Gender, Product

--Average fitness level and usage for each product and income category
SELECT
	Product,
	IncomeCategory,
	ROUND(AVG(Fitness), 2) AvgFitness,
	ROUND(AVG(Usage), 2) AvgUsage
FROM treadmill_df
GROUP BY Product, IncomeCategory
ORDER BY Product, IncomeCategory;

--Percentage of customers buying each product by marital status and education level
WITH customer_counts AS(
	SELECT
		Product,
		MaritalStatus,
		CASE
			WHEN Education <= 12 THEN 'High School or Less'
			WHEN Education BETWEEN 13 AND 16 THEN 'College'
			ELSE 'Post-Graduate'
		END AS EducationLevel,
		COUNT(*) Count
		FROM treadmill_df
		GROUP BY Product, MaritalStatus, 
			CASE
			WHEN Education <= 12 THEN 'High School or Less'
			WHEN Education BETWEEN 13 AND 16 THEN 'College'
			ELSE 'Post-Graduate'
			END
)
SELECT
	Product,
	MaritalStatus,
	EducationLevel,
	Count,
	ROUND(Count * 100 / SUM(Count) OVER (PARTITION BY MaritalStatus, EducationLevel), 2) Percentage
FROM customer_counts
ORDER BY MaritalStatus, EducationLevel, Product;

--Top 5 customers by miles run for each product
WITH ranked_customers AS(
	SELECT
		Product,
		Age,
		Gender,
		Miles,
		ROW_NUMBER() OVER (PARTITION BY Product ORDER BY Miles DESC) AS Rank
	FROM treadmill_df
)
SELECT *
FROM ranked_customers
WHERE Rank <= 5
ORDER BY Product, Rank