-- Which customers spent more than the average customer spending?
select * from orders;
select * from payments; 
select * from products; 
select * from order_items; 
select * from customers;
select  c.customer_name , c.customer_id , sum(o.total_amount) as  total_spend  from customers c
join orders o 
on c.customer_id = o.customer_id
GROUP BY c.customer_id,
         c.customer_name
HAVING SUM(o.total_amount)> 
(select avg(cu_spending) 
from
( 
select customer_id , 
sum(total_amount) as cu_spending
from orders 
group by customer_id )t
);