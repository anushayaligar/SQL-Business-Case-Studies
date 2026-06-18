-- Rank customers by total revenue from highest to lowest
select * from customers;
select * from orders;
with customer_revenue as (select customer_id ,
sum(total_amount) as total_revenue from orders 
group by  customer_id)
SELECT c.customer_id ,
cu.customer_name , c.total_revenue ,
       RANK() OVER(
           ORDER BY total_revenue DESC
       ) AS customer_rank
FROM customer_revenue c
join customers cu
on c.customer_id =cu.customer_id



 