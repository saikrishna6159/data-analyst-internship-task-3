# Data Analyst Internship - Task 3

## SQL for Data Analysis

### Objective

The objective of this task was to use SQL queries to extract, analyze, and interpret sales data.

## Dataset

Cafe Sales Dataset

The cleaned dataset contains transaction-level sales information including:

- Transaction ID
- Item
- Quantity
- Price Per Unit
- Total Spent
- Payment Method
- Location
- Transaction Date

## Tool Used

- MySQL Workbench
- MySQL

## SQL Concepts Used

1. SELECT
2. WHERE
3. ORDER BY
4. GROUP BY
5. SUM()
6. AVG()
7. COUNT()
8. JOIN
9. Subqueries
10. Window Functions
11. Indexing / Query Optimization

## Analysis Performed

### Sales by Item
Calculated total sales for each café item using SUM() and GROUP BY.

### Average Spending
Calculated average spending by item using AVG().

### Payment Analysis
Counted transactions by payment method.

### Above-Average Transactions
Used a subquery to identify transactions above the overall average spending.

### Item Ranking
Used the RANK() window function to rank items based on total sales.

### Data Integration
Used a LEFT JOIN to combine sales data with item category information.

### Query Optimization
Created an index on transaction_date to demonstrate indexing for query performance.

## Key Business Insights

- Sales performance varies across different café items.
- Items can be ranked according to their total sales contribution.
- Payment methods have different transaction volumes.
- Some transactions spend more than the overall average.
- Categorizing items helps compare Food and Beverage performance.

## Deliverables

- Task_3_SQL_Analysis.sql
- SQL result screenshots
- Cafe sales dataset
