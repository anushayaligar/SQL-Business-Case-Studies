select * from orders;
select * from payments; 
select * from products; 
select * from order_items; 
select * from customers;
with category_revenue as(select p.category , 
sum(p.price * o.quantity) as total_revenue
from products p 
join order_items o
on p.product_id=o.product_id
group by p.category)
select * from category_revenue 
order by total_revenue desc;
 