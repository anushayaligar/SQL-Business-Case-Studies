-- Which customers generated the highest revenue?
select * from orders;
select * from payments; 
select * from products; 
select * from order_items; 
select * from customers;

select c.customer_id , c.customer_name , count(o.order_id) as 
number_of_orders , sum(o.total_amount) as total_revenue from customers c 
join orders o 
on c.customer_id=o.customer_id
group by c.customer_id , c.customer_name 
order by total_revenue desc;
