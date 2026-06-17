-- Find customers who satisfy BOTH conditions:
-- Revenue is above average customer revenue
-- Number of orders is above average customer orders
select * from orders;
select * from customers; 
with customer_revenue as (
select customer_id , 
count(order_id) as total_orders ,
sum(total_amount) as total_revenue 
from orders 
group by customer_id),
avg_cus_rev as (
select avg(total_revenue) as avg_total_revenue ,
avg(total_orders) as 
avg_cutomer_orders
from customer_revenue )
select c.customer_id , cr.customer_name ,
c.total_revenue , c.total_orders from customer_revenue c
join customers cr 
on c.customer_id = cr.customer_id
cross join  avg_cus_rev a 
where c.total_revenue > a.avg_total_revenue and 
c.total_orders > a.avg_cutomer_orders
order by c.total_revenue desc ;