-- Find customer(s) who generated the maximum total revenue.
select * from products;
select * from order_items;
select * from orders;
select * from payments;
select * from customers;
select c.customer_id,c.customer_name,
sum(o.total_amount) as total_revenue from customers c 
join orders o
on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name
having sum(o.total_amount) =  (select max(total_revenue) 
from (select customer_id , sum(total_amount)
as total_revenue from orders
group by customer_id)t);