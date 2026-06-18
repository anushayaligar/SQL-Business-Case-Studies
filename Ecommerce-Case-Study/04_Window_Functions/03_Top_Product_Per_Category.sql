-- 03_Top_Product_Per_Category
-- Find the highest revenue product in each category.
-- Rank products by revenue within each category.
WITH product_revenue AS
(
    SELECT p.product_id,
           p.category,product_name,
           SUM(p.price * o.quantity) AS pro_revenue
    FROM products p
    JOIN order_items o
    ON p.product_id = o.product_id
    GROUP BY p.product_id,
             p.category
),
product_rank as(
select product_id,
           category, pro_revenue, product_name,
           row_number() over
           ( partition by category 
           order by pro_revenue desc ) as category_rank
           from product_revenue 
           )
       SELECT product_id,
       product_name,
       category,
       pro_revenue
FROM product_rank
WHERE category_rank = 1;
          
