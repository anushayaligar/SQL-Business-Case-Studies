-- Find products generating revenue below the average product revenue.
select * from products;
select * from order_items;
select * from orders;
select * from payments;
select * from customers;
select p.product_id,
p.product_name,
p.category,
sum(p.price*o.quantity) as product_revenue 
from products p 
join order_items o
on p.product_id = o.product_id 
group by p.product_id,
p.product_name,
p.category 
having sum(p.price*o.quantity)< (select avg(product_revenue ) from 
(select p.product_id,sum(p.price*o.quantity) as product_revenue 
from products p 
join order_items o
on p.product_id = o.product_id 
group by p.product_id)t);
