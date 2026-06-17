# Customer Segmentation Analysis

## Business Problem

Identify customers whose revenue is above the average customer revenue and whose order count is above the average customer order count.

## Objective

Segment high-value and highly engaged customers for targeted retention and growth strategies.

## SQL Concepts Used

* Common Table Expressions (CTEs)
* Multiple CTEs
* INNER JOIN
* CROSS JOIN
* GROUP BY
* COUNT()
* SUM()
* AVG()
* WHERE Clause
* ORDER BY

## Tables Used

* customers
* orders

## Analysis Approach

1. Created a CTE to calculate total orders and total revenue for each customer.
2. Created a second CTE to calculate average customer revenue and average customer order count.
3. Joined customer information with aggregated metrics.
4. Identified customers who exceeded both revenue and order benchmarks.
5. Ranked customers by revenue contribution.

## Findings

1. A small group of customers generates above-average revenue and places above-average orders.
2. These customers represent the most valuable segment of the customer base.
3. High-value customers contribute significantly to business growth and stability.

## Business Recommendations

1. Create VIP loyalty programs for high-value customers.
2. Offer exclusive discounts and early access promotions.
3. Monitor customer behavior to prevent churn.
4. Develop personalized engagement campaigns to maximize lifetime value.

## Skills Demonstrated

* Customer Segmentation
* Revenue Analysis
* Customer Retention Analytics
* SQL CTEs
* Business Intelligence
* Data-Driven Decision Making

