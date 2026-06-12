# Customers With No Orders Analysis

## Business Problem

Identify customers who have registered but have never placed an order.

## Objective

Find inactive customers who have not made any purchases so that the marketing team can target them with promotional campaigns.

## SQL Concepts Used

- LEFT JOIN
- NULL Filtering

## Tables Used

- customers
- orders

## Analysis Approach

1. Start with all customers.
2. Join orders using customer_id.
3. Identify customers without matching orders.
4. Return inactive customers.

## Findings

1. Some registered customers have never placed an order.
2. These customers represent untapped revenue opportunities.
3. The business can increase sales by converting inactive customers into buyers.

## Business Recommendations

1. Send welcome offers to inactive customers.
2. Launch email marketing campaigns.
3. Provide first-purchase discounts to encourage conversions.

## Skills Demonstrated

- SQL Joins
- Customer Analysis
- Business Analytics
- Marketing Analytics
- Data-Driven Decision Making
