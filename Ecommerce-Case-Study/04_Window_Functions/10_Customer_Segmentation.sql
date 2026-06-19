


WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id,
       total_revenue,
       NTILE(4) OVER
       (
           ORDER BY total_revenue DESC
       ) AS customer_segment
FROM customer_revenue;