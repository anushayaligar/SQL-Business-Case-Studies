-- Find categories whose revenue is above the average category revenue.
select * from products;
select * from order_items;
with category_revenue as (
select p.category , sum(p.price * o.quantity ) as total_revenue 
from products p
join order_items o
on p.product_id=o.product_id
group by p.category),
avg_cat_rev as ( select avg(total_revenue)as avg_category_rev from 
category_revenue )
select c.category , c.total_revenue from 
category_revenue c
cross join avg_cat_rev a
where c.total_revenue > a.avg_category_rev;
