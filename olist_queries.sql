```sql
-- ============================================================
-- Olist E-Commerce Business Performance Analysis
-- Database Engine: SQLite
-- ============================================================

-- 1. Order Status Distribution
SELECT 
    order_status, 
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;


-- 2. Top 5 Customer States by Completed Order Volume
SELECT 
    c.customer_state, 
    COUNT(*) AS total_orders
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY total_orders DESC
LIMIT 5;


-- 3. Total Delivered Revenue and Freight Charges
SELECT 
    o.order_status, 
    SUM(oi.price) AS total_product_revenue,
    SUM(oi.freight_value) AS total_freight_value
FROM orders o
INNER JOIN order_items oi 
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY o.order_status;


-- 4. Monthly Revenue Trend (Time-Series)
SELECT 
    strftime('%Y-%m', o.order_purchase_timestamp) AS year_month,
    SUM(oi.price) AS total_revenue
FROM orders o
INNER JOIN order_items oi 
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY year_month
ORDER BY year_month ASC;


-- 5. Top 5 Product Categories by Total Revenue
select product_category_name, sum(price) AS Total_Revenue
from orders o
inner join order_items oi
on o.order_id=oi.order_id
inner join products p 
on oi.product_id = p.product_id 
where order_status='delivered'
group by product_category_name
order by Total_Revenue DESC 
limit 5;
