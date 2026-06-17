-- Identify the Top 5 Products by Revenue.
select * from products;
select * from order_items;
with product_revenue as (
select p.product_id , p.product_name , p.category ,
sum(p.price * o.quantity ) as pro_rev
from products p
join order_items o
on p.product_id=o.product_id
group by p.product_id , p.product_name , p.category
)
select product_id , product_name , category,
pro_rev from product_revenue 
order by pro_rev desc 
limit 5;


