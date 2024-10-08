## Project Objective
To analyze customer profiles and purchasing behavior for AeroFit's three treadmill models (KP281, KP481, KP781) to inform targeted marketing strategies.

## Key Metrics
- **Distribution of Product Variant Purchases (North Star Metric)**

**Definition:** This metric measures the percentage of each treadmill model sold in relation to the total sales. 

**Explanation:** It is a crucial metric because it directly reflects customer preferences across different customer segments. Understanding which models are more popular with specific customer demographics (such as age, income, fitness level, or geographic location) can help AeroFit tailor its marketing strategies and product offerings to better meet the needs of its customers. The higher the percentage for a particular model among a target group, the more aligned AeroFit’s products are with that group’s preferences.

- **Customer Demographic Profile for Each Treadmill Model**

**Definition:** This metric involves analyzing and categorizing customers based on demographics such as age, gender, income, location, and fitness goals. 

**Explanation:** By understanding these characteristics, AeroFit can identify distinct customer profiles for each treadmill model, allowing for more targeted marketing efforts. For example, if a particular model is more popular among younger, urban customers with higher incomes, AeroFit can focus its marketing efforts on this demographic to boost sales for that model.

## Dashboard Overview
![](https://github.com/najmisyazani/Treadmill-Purchase-Analysis/blob/main/Treadmill%20Customer%20Profile%20Analysis%20Excel%20Dashboard.png)

## Overview of Python Writeup
![](https://github.com/najmisyazani/Treadmill-Purchase-Analysis/blob/main/Overview%20of%20Python%20Writeup.png)

## Technical Summary
- **Data Preparation:** Imported the dataset, performed initial exploratory data analysis by checking data types, missing values, and duplicates. Converted categorical variables to appropriate data types and examined the distribution of variables using descriptive statistics.
- **Univariate Analysis:** Conducted in-depth univariate analysis on both numerical and categorical variables using various visualization techniques such as distribution plots, count plots, and box plots to understand the individual characteristics of each variable.
- **Bivariate and Multivariate Analysis:** Explored relationships between variables, particularly how different features relate to the product purchased, using count plots and box plots. Performed correlation analysis and visualized it with a heatmap to identify significant relationships between numerical variables.
- **Feature Engineering:** Created new categorical features:
  - "AgeGroup" and "AgeCategory" from the Age variable
  - "IncomeCategory" from the Income variable
- **Probability Analysis:** Calculated marginal and conditional probabilities for various scenarios. Used crosstabs to create contingency tables for different variable combinations.
- **Data Analysis with SQL:** Aggregated data across multiple dimensions to provide a comprehensive view of the customer profile. Used window functions to facilitate ranking and percentage calculations.

![](https://github.com/najmisyazani/Treadmill-Purchase-Analysis/blob/main/SQL%20Query%203.png)

## Actionable Insights
- Model KP281 is the best-selling product. 44.0% of all treadmill sales go to model KP281.
- The majority of treadmill customers fall within the $ 45,000 - $ 80,000 income bracket.
- 83% of treadmills are bought by individuals with incomes between $ 35,000 and $ 85,000.
- There are only 8% of customers with incomes below $ 35000 who buy treadmills.
- 88% of treadmills are purchased by customers aged 20 to 40.
- Miles and Fitness & Miles and Usage are highly correlated, which means if a customer's fitness level is high they use more treadmills.
- KP781 is the only model purchased by a customer who has more than 20 years of education and an income of over $ 85,000.
- With Fitness level 4 and 5, the customers tend to use high-end treadmills and the average number of miles is above 150 per week.

## Recommendations
- KP281 & KP481 are popular with customer income of $ 45,000 - $ 60,000 and can be offered by these companies as affordable models.
- KP781 should be marketed as a Premium Model and marketing it to high income groups and educational over 20 years market segments could result in more sales.
- The KP781 is a premium model, so it is ideally suited for sporty people who have a high average weekly mileage and can be afforded by the high income customers.
- Aerofit should conduct market research to determine if it can attract customers with income under $ 35,000 to expand its customer base.
