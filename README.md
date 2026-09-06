# 🚲 Bike Share Data Analysis – SQL

## 📌 Project Overview

This project is a Bike Share Data Analysis project developed using SQL to explore bike rental revenue, rider behavior, seasonal patterns, and usage trends.

The analysis combines bike share data from 2021 and 2022 with a cost table to calculate revenue and investigate different aspects of bike rental activity.

The project focuses on transforming raw bike share data into meaningful business insights using SQL queries and analytical techniques.

---

## 🎯 Project Objectives

The main objectives of this project are to analyze:

- Total Revenue
- Total Revenue by Year
- Total Revenue by Season
- Total Revenue by Rider Type
- Rider Distribution by Rider Type
- Monthly Trends
- Hourly Trends
- Revenue by Season Name

---

## 🛠️ Tools & SQL Skills

- SQL
- SELECT
- JOIN
- UNION
- Common Table Expressions (CTEs)
- GROUP BY
- Aggregate Functions
- SUM
- ROUND
- CASE Statements
- Subqueries
- Percentage Calculations
- Data Aggregation
- Revenue Analysis
- Trend Analysis
- Business Analysis

---

## 🗂️ Data Structure

The project uses three tables:

### 1. Bike Share 2021

bike_share_yr_0

Contains bike rental information for 2021.

### 2. Bike Share 2022

bike_share_yr_1

Contains bike rental information for 2022.

### 3. Cost Table

cost_table

Contains the pricing information used to calculate revenue.

The bike share tables include fields related to:

- Date
- Season
- Year
- Month
- Hour
- Holiday
- Weekday
- Working Day
- Weather Situation
- Temperature
- Feeling Temperature
- Humidity
- Windspeed
- Rider Type
- Riders

The rider types included in the dataset are:

- Casual
- Registered

---

# 🔗 Data Combination & Revenue Calculation

The 2021 and 2022 bike share tables were combined using UNION to create a unified dataset for analysis.

The bike share data was then joined with the cost_table using the **year (yr)** field.

Revenue was calculated using:

`sql

Riders × Price

This approach was used to calculate total revenue and revenue across different dimensions.

------


# 🧮 SQL Analysis

## 💰 Total Revenue

The project calculates total revenue by multiplying the number of riders by the corresponding price.

The analysis first calculates revenue for each year and then combines the data to calculate the overall total revenue.

---

## 📅 Total Revenue by Year

Revenue was analyzed by year to compare bike share financial performance across:

- 2021
- 2022

GROUP BY was used to aggregate revenue by year.

---

## 🍂 Total Revenue by Season

Revenue was analyzed across the different seasons to understand seasonal revenue patterns.

The analysis groups revenue by the season field.

---

## 👥 Total Revenue by Rider Type

Revenue was analyzed based on rider type:

- Casual
- Registered

This helps evaluate the revenue contribution of different rider groups.

---

## 📊 Rider Distribution by Rider Type

The project calculates the percentage distribution of riders by rider type.

A subquery was used to calculate the total number of riders, while ROUND was used to calculate the percentage to two decimal places.

The calculation is based on:

Riders by Type ÷ Total Riders × 100

---

## 📈 Monthly Trend

The analysis examines the total number of riders across the months of the year.

GROUP BY was used to aggregate the total riders by month.

This helps identify monthly patterns in bike rental usage.

---

## 🕐 Hourly Trend

The project analyzes the total number of riders across different hours of the day.

The analysis covers hourly rental activity from:

00:00 – 23:00

This helps explore how bike rental activity changes throughout the day.

---

## 🌦️ Revenue by Season Name

A CASE statement was used to convert the numerical season values into descriptive season names:

- 1 → Springer
- 2 → Summer
- 3 → Fall
- 4 → Winter

Revenue was then aggregated by season and ordered by total revenue.

------

# 🔍 SQL Techniques Demonstrated

### Common Table Expressions (CTEs)

CTEs were used to create a combined bike share dataset from the 2021 and 2022 tables before performing further analysis.

Example:

WITH Bikes AS (

    SELECT * FROM bike_share_yr_0
    
    UNION
    
    SELECT * FROM bike_share_yr_1
)

This makes the analysis easier to organize and reuse across multiple queries.

---

### JOIN

A JOIN was used to connect the bike share data with the cost_table using the year field.

JOIN cost_table

ON Bikes.yr = cost_table.yr

------

### UNION

UNION was used to combine the bike share records from 2021 and 2022 into a single dataset for analysis.

---

### GROUP BY

GROUP BY was used to aggregate data across different dimensions, including:

- Year
- Season
- Rider Type
- Month
- Hour

---

### CASE

A CASE statement was used to transform numerical season values into readable season names.

---

### Subqueries

Subqueries were used to calculate the total number of riders as part of the rider distribution percentage analysis.

---

### Aggregate Functions

Aggregate functions such as:

- SUM()
- ROUND()

were used to calculate revenue, rider totals, and percentage distributions.

---

# 📌 Analysis Areas

The project covers several business analysis areas:

### 💰 Revenue Analysis

- Total revenue
- Revenue by year
- Revenue by season
- Revenue by rider type
- Revenue by season name

### 👥 Rider Analysis

- Total riders
- Rider distribution
- Rider type analysis
- Casual vs. Registered riders

### 📅 Time Analysis

- Monthly rider trends
- Hourly rider trends
- Yearly revenue comparison
- Seasonal revenue comparison
  
------
  
### 🔄 Analysis Workflow

Bike Share Data 2021
        +
Bike Share Data 2022
        ↓
Combine Data Using UNION
        ↓
Join with Cost Table
        ↓
Calculate Revenue
        ↓
Create CTEs for Analysis
        ↓
Aggregate Data Using SUM & GROUP BY
        ↓
Analyze Rider Distribution
        ↓
Analyze Monthly & Hourly Trends
        ↓
Apply CASE for Season Names
        ↓
Generate Business Insights

------

# 💡 Key Analysis Questions

This SQL project answers the following analytical questions:

- What is the total revenue generated by the bike share business?
- How does revenue compare between 2021 and 2022?
- Which seasons generate the highest revenue?
- How does revenue differ between casual and registered riders?
- What is the distribution of riders by rider type?
- How does bike rental activity change across months?
- Which hours show higher or lower rider activity?
- How does revenue vary across named seasons?
  
------

# 📁 Project Files

### SQL Analysis

BikeShare-SQL-Analysis.sql

Contains all SQL queries used to perform the analysis, including revenue calculations, data combination, rider analysis, seasonal analysis, and trend analysis.

### Analysis Documentation

BikeShare-SQL-Analysis.pdf

Contains the documented analysis and screenshots of the SQL operations performed during the project.

---

# 🎯 Project Objective

The main objective of this project is to demonstrate the use of SQL for practical data analysis by transforming bike share rental data into structured business analysis.

The project demonstrates the ability to:

- Combine data from multiple tables
- Connect datasets using JOIN
- Use CTEs to organize complex queries
- Aggregate data using SQL functions
- Calculate revenue and rider percentages
- Analyze trends across time
- Segment analysis by rider type and season
- Translate raw data into meaningful business questions

---

# 💼 Project Type

Bike Share Data Analysis | SQL | Business Intelligence

---

⭐ This project is part of my Data Analyst Portfolio, demonstrating practical SQL skills in data querying, data aggregation, revenue analysis, trend analysis, and business-focused data exploration.
