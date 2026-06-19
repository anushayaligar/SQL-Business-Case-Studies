-- Compare each customer's current 
-- order amount with their previous order amount.
select * from customers;
select * from orders;
with order_amount as (
select customer_id,order_id, 
order_date, total_amount ,
lag(total_amount) over(
partition by customer_id 
order by order_date) as prev_order_amount 
from orders )
select * from order_amount