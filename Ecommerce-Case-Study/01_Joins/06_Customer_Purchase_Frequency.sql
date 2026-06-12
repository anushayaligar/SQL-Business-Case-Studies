-- Which customers place the most orders?
select * from orders;
select * from payments; 
select * from products; 
select * from order_items; 
select * from customers;

select c.customer_id , c.customer_name , count(o.order_id)
 as number_of_orders
from customers c
join orders o 
on c.customer_id=o.customer_id
group by c.customer_id , c.customer_name
order by number_of_orders desc;