-- Identify repeat customers and calculate their total orders and total revenue.
-- main catch is repeat customers = total_ordes>1
select * from orders;
select * from customers; 
with customer_summary as (
select customer_id , 
count(order_id) as total_orders ,
sum(total_amount) as total_revenue 
from orders 
group by customer_id)
select cr.customer_id ,c.customer_name,cr.total_orders, cr.total_revenue
from customer_summary cr
join customers c 
on cr.customer_id= c.customer_id
where total_orders > 1;
