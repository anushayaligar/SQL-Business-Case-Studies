select * from orders;
select * from payments; 
select * from products; 
select * from order_items; 
select * from customers;

select c.customer_name ,c.customer_id , c.city from customers c
left join orders o
on c.customer_id=o.customer_id 
where o.order_id is null;
