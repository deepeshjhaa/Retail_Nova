RetailNova - Sales and Customer Analytics Dashboard

Project Overview

RetailNova is an end-to-end SQL + Power BI Data Analytics Project designed to analyze sales performance, customer behavior, product profitability, and regional trends.

The project demonstrates:

SQL data cleaning
Data modeling
KPI analysis
Business problem solving
Window functions
Power BI dashboard development
Business insights & recommendations
Tech Stack
SQL
MySQL
Joins
Views
Window Functions
Aggregations
KPI Queries
Power BI
Data Modeling
DAX Measures
Interactive Dashboards
KPI Cards
Filters and Slicers
Business Visualizations
Database Schema

The project contains 5 tables:

Table Name	Description
orders	Order transaction details
customer	Customer information
products	Product details
returns	Returned orders
regions	Region & market mapping
SQL Project Workflow

1. Database Creation
Created the retailnova database and imported CSV datasets into MySQL.

2. Data Cleaning & Validation
Performed:
Null value checks
Duplicate checks
Negative sales/profit analysis
Invalid date validation
Missing customer analysis
Example:
SELECT *
FROM orders
WHERE sales < 0
OR profit < 0;
3. Data Modeling
Created foreign key relationships:
Orders ↔ Customers
Orders ↔ Products
4. Views Creation
Sales Analysis View

Created a consolidated business view using joins.
CREATE VIEW sales_analysis AS
SELECT ...
Customer Audit View
Used for identifying customers with no orders.

KPI Analysis
Created business KPIs such as:
Total Sales
Total Profit
Total Orders
Total Customers
Average Order Value
Profit Margin %
Return Rate %

Business Questions Solved
Top 10 revenue-generating products
Most profitable customers
Highest sales region
Loss-making products
Monthly sales trends
Return rate by region
Shipping cost analysis
Advanced SQL Concepts Used
Window Functions

Implemented:
RANK()
DENSE_RANK()
ROW_NUMBER()
LAG()
Running Totals
Example:
RANK() OVER (ORDER BY SUM(profit) DESC)
Customer Analytics

Performed:
Repeat customer analysis
Customer lifetime value analysis
Customer segmentation
Power BI Dashboard

Created a multi-page interactive dashboard.
Dashboard Pages
Page 1 - Executive Dashboard

Includes:
KPI Cards
Sales Trends
Regional Analysis
Category Performance
Return Metrics
Page 2 - Product Analysis

Includes:
Top Products
Loss-Making Products
Category Analysis
Quantity Analysis
Discount vs Profit Analysis
Page 3 - Customer Analysis
Includes:
Customer Lifetime Value
Repeat Customers
Segment Analysis
Top Customers
City-wise Analysis
DAX Measures Created
Total Sales = SUM(Sales_analysis[sales])
Return Rate % =
DIVIDE(
    [Returned Orders],
    DISTINCTCOUNT(Sales_analysis[order_id])
) * 100
Key Insights
Central region generated the highest revenue contribution.
Technology category recorded the highest sales.
Safco emerged as the top-performing product by revenue.
Repeat customers contributed significantly to total sales.
Some products generated high sales but low profitability due to discounts and shipping costs.
Business Recommendations
Focus more on high-performing Technology products.
Reduce excessive discounts on low-profit products.
Improve operations in high return-rate regions.
Implement loyalty programs for repeat customers.
Skills Demonstrated
SQL Query Writing
Data Cleaning
Joins & Views
Window Functions
Business Analysis
KPI Development
DAX
Power BI Dashboard Design
Data Visualization
Insight Generation
Project Outcome

This project helped in:

Understanding real-world business analysis
Building end-to-end analytics workflows
Creating interactive BI dashboards
Developing analytical and storytelling skills
