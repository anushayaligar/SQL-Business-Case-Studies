
select * from products; 
select * from order_items; 

select p.product_id, p.product_name, p.category 
from products p 
left join order_items o
on p.product_id=o.product_id
where  o.order_id is null;