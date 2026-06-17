select * from orders;
WITH customer_revenue AS
(
    SELECT customer_id,
           SUM(total_amount) AS total_revenue
    FROM orders
    GROUP BY customer_id
),
total_company_revenue as(
select sum(total_amount) as company_revenue
from orders )
select c.customer_id,
cu.customer_name,
c.total_revenue,
ROUND(100.0 * c.total_revenue / t.company_revenue,2) AS revenue_percentage 
from customer_revenue c
join customers cu
on c.customer_id=cu.customer_id
cross join total_company_revenue t
WHERE (100.0 * c.total_revenue / t.company_revenue) > 20
ORDER BY revenue_percentage DESC;