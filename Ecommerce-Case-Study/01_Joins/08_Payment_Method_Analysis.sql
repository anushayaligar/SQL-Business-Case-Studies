-- Which payment methods generate the most revenue and are used most frequently?

select * from orders;
select * from payments; 
select * from products; 
select * from order_items; 
select * from customers;

select p.payment_method, count(o.order_id ) as number_of_orders,
sum(o.total_amount)  as total_revenue from payments p
join orders o 
on p.order_id = o.order_id
group by p.payment_method
order by total_revenue desc;