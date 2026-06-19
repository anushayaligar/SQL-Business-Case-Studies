-- 08_Customer_Spending_Trend
-- Identify customers whose spending increased or decreased compared to their previous order.

WITH customer_orders AS
(
    SELECT customer_id,
           order_id,
           order_date,
           total_amount,
           LAG(total_amount) OVER
           (
               PARTITION BY customer_id
               ORDER BY order_date
           ) AS previous_order_amount
    FROM orders
)
SELECT *,
       CASE
           WHEN previous_order_amount IS NULL
                THEN 'First Order'
           WHEN total_amount > previous_order_amount
                THEN 'Increased'
           WHEN total_amount < previous_order_amount
                THEN 'Decreased'
           ELSE 'No Change'
       END AS spending_trend
FROM customer_orders
ORDER BY customer_id,
         order_date;