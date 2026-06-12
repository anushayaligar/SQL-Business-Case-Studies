select * from orders;
select * from payments; 
select * from products; 
select * from order_items; 
select * from customers;
select p.product_id , p.product_name , p.category , sum(p.price*o.quantity)
as total_revenue from products p 
join order_items o 
on p.product_id=o.product_id
group by p.product_id , p.product_name , p.category
order by total_revenue desc;