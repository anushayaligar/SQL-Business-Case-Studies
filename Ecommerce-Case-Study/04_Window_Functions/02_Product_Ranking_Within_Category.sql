-- Rank products by revenue within each category.
WITH product_revenue AS
(
    SELECT p.product_id,
           p.category,
           SUM(p.price * o.quantity) AS pro_revenue
    FROM products p
    JOIN order_items o
    ON p.product_id = o.product_id
    GROUP BY p.product_id,
             p.category
)
select product_id,
           category, pro_revenue, 
           rank() over( partition by category 
           order by pro_revenue desc ) as category_rank
           from product_revenue 
           
