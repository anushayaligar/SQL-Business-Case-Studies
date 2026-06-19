-- Calculate a running total of company revenue over time.
with total as (
select order_date , 
sum(total_amount) as daily_revenue 
from orders 
group by order_date 
)
select order_date ,daily_revenue ,
sum(daily_revenue) over ( 
order by order_date ) as running_total from total




