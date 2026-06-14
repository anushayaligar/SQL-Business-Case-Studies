-- Identify the Top 3 Customers by Revenue.
-- normal method 
select * from orders;
select * from payments; 
select * from products; 
select * from order_items; 
select * from customers;
select c.customer_id,
c.customer_name, 
sum(total_amount) as total_revenue from customers c 
join orders o
on c.customer_id = o.customer_id
group by c.customer_id,
c.customer_name 
order by total_revenue desc
 limit 3 ;
 
 -- with cte 
 WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
)
SELECT c.customer_id,
       c.customer_name,
       cr.total_revenue
FROM customer_revenue cr
JOIN customers c
ON cr.customer_id = c.customer_id
ORDER BY cr.total_revenue DESC
LIMIT 3;