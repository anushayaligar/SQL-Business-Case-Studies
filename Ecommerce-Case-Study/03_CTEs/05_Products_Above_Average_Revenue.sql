-- Find products generating revenue above the average product revenue.
select * from orders;
select * from payments; 
select * from products; 
select * from order_items;
WITH product_revenue AS
(
    SELECT p.product_id,
           p.product_name,
           p.category,
           SUM(p.price * o.quantity) AS pro_revenue
    FROM products p
    JOIN order_items o
    ON p.product_id = o.product_id
    GROUP BY p.product_id,
             p.product_name,
             p.category
),
avg_pro_rev AS
(
    SELECT AVG(pro_revenue) AS average_product_revenue
    FROM product_revenue
)
SELECT *
FROM product_revenue pr
CROSS JOIN avg_pro_rev apr
WHERE pr.pro_revenue > apr.average_product_revenue
ORDER BY pro_revenue DESC;
