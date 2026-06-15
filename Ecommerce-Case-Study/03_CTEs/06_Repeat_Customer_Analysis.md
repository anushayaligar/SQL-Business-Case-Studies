
# Repeat Customer Analysis

## Business Problem

Identify repeat customers and calculate their total orders and total revenue.

## Objective

Analyze customer retention by identifying customers who have placed multiple orders and evaluating their revenue contribution.

## SQL Concepts Used

* Common Table Expressions (CTEs)
* INNER JOIN
* GROUP BY
* COUNT()
* SUM()
* WHERE Clause

## Tables Used

* customers
* orders

## Analysis Approach

1. Created a CTE to calculate total orders and total revenue for each customer.
2. Joined customer details with the aggregated results.
3. Filtered customers having more than one order.
4. Identified repeat customers and their contribution to revenue.

## Findings

1. Repeat customers contribute a significant portion of total revenue.
2. Customers with multiple purchases demonstrate higher engagement.
3. Retaining repeat customers can significantly impact business growth.

## Business Recommendations

1. Implement loyalty and rewards programs for repeat customers.
2. Create personalized marketing campaigns to increase retention.
3. Monitor repeat purchase behavior to identify high-value customers.

## Skills Demonstrated

* Customer Analytics
* Retention Analysis
* SQL CTEs
* Business Intelligence
* Data-Driven Decision Making
