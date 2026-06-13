-- Find products that sold more units than the average product quantity sold.
select * from products;
select * from order_items;
select * from orders;
select * from payments;
select p.product_id,
p.product_name,
p.category,
sum(o.quantity) as total_quantity_sold from products p
join order_items o
on p.product_id=o.product_id
group by p.product_id,
p.product_name,
p.category 
having sum(o.quantity) > (select avg(total_quantity_sold) 
from (select p.product_id,
sum(o.quantity) as total_quantity_sold from products p
join order_items o
on p.product_id=o.product_id
group by p.product_id)t);