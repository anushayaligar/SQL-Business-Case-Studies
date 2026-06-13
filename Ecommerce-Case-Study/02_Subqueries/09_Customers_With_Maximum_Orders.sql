-- Find customer(s) who placed the maximum number of orders.
select * from customers ;
select * from orders;
select c.customer_id,
c.customer_name,
count(o.order_id) as number_of_orders from customers c 
join orders o 
on c.customer_id = o.customer_id
group by c.customer_id,
c.customer_name
having count(o.order_id) = (select max(number_of_orders) 
from (select c.customer_id ,count(o.order_id) 
as number_of_orders from customers c
join orders o 
on c.customer_id = o.customer_id
group by c.customer_id)t);
 