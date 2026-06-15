-- Find customers whose revenue is above the average customer revenue.
with customer_revenue as(select customer_id ,
sum(total_amount) as total_revenue from orders
group by customer_id),
average_revenue as (select
avg(total_revenue) as avg_revenue from customer_revenue 
) 
select cr.customer_id ,
c.customer_name ,
cr.total_revenue 
from customer_revenue cr
join customers c 
on cr.customer_id = c.customer_id
cross join average_revenue a
where cr.total_revenue > a.avg_revenue 
order by cr.total_revenue desc;

