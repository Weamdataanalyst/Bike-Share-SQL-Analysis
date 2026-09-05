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

---

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
