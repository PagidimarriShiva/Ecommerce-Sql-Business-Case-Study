CREATE DATABASE ecommerce_analysis;
use  ecommerce_analysis;

select * from orders
where order_date is null;

select * from users
where user_id is null;

-- Total Revenue Generated
select round (sum(total_amount),2) as total_revenue
from orders;

-- total orders generated
select count(*) as total_orders from orders;

-- Total Items Generated
select distinct (count(*)) as total_items from order_items;

-- Total Events 
select distinct(count(*)) as total_events from events;

-- monthly Sales Trend
select monthname(order_date) as month,
 round(sum(total_amount),2) revenue
 from orders
 group by month
 order by month ;
 
 -- Top 10 Customers by Revenue

SELECT
    u.user_id,
    u.name,
    ROUND(SUM(total_amount), 2) AS customer_revenue
FROM users u
JOIN orders o
    ON u.user_id = o.user_id
    JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY u.user_id, u.name
ORDER BY customer_revenue DESC
LIMIT 10;

-- Repeat Purchase Customers

SELECT
    user_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY user_id
HAVING COUNT(order_id) > 1;

-- Customer Retention Rate
WITH customer_orders AS (
    SELECT
        user_id,
        COUNT(order_id) AS order_count
    FROM orders
    GROUP BY user_id
)
SELECT
    ROUND(
        100.0 *
        COUNT(CASE WHEN order_count > 1 THEN 1 END)
        / COUNT(*),
        2
    ) AS retention_rate
FROM customer_orders;

-- Best Selling Products
SELECT
    product_id,
    SUM(quantity) AS units_sold
FROM order_items
GROUP BY product_id
ORDER BY units_sold DESC
LIMIT 10;

-- event type
SELECT
    event_type,
    COUNT(*) AS total_events
FROM events
GROUP BY event_type;

-- Highest Rated Products
SELECT
    product_id,
    ROUND(AVG(rating), 2) AS avg_rating
FROM reviews
GROUP BY product_id
ORDER BY avg_rating DESC;

-- Low Rated Products
SELECT
    product_id,
    ROUND(AVG(rating), 2) AS avg_rating
FROM reviews
GROUP BY product_id
HAVING AVG(rating) < 3
ORDER BY avg_rating;

-- Most Active Users
SELECT
    user_id,
    COUNT(event_type) AS total_events
FROM events
GROUP BY user_id
ORDER BY total_events DESC
LIMIT 10;

-- Conversion Funnel Analysis
SELECT
    event_type,
    COUNT(*) AS total_events
FROM events
WHERE event_type IN (
    'page_view',
    'add_to_cart',
    'purchase'
)
GROUP BY event_type;

-- Cart Abandonment Users
SELECT DISTINCT e.user_id
FROM events e
WHERE e.event_type = 'add_to_cart'
AND e.user_id NOT IN (
    SELECT user_id
    FROM events
    WHERE event_type = 'purchase'
);

-- Average Order Value (AOV)
SELECT
    ROUND(
        SUM(item_price * quantity)
        / COUNT(DISTINCT order_id),
        2
    ) AS avg_order_value
FROM order_items;

-- Customer Lifetime Value (CLV)
SELECT
    u.user_id,
    ROUND(SUM(o.total_amount), 2) AS lifetime_value
FROM users u
JOIN orders o
    ON u.user_id = o.user_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY u.user_id
ORDER BY lifetime_value DESC;

-- Churn Risk Customers
SELECT
    user_id,
    MAX(order_date) AS last_purchase
FROM orders
GROUP BY user_id
HAVING MAX(order_date) < CURDATE() - INTERVAL 90 DAY;

-- RFM Analysis (Advanced)
WITH rfm AS (
    SELECT
        o.user_id,
        CURRENT_DATE - MAX(o.order_date) AS recency,
        COUNT(o.order_id) AS frequency,
        round(SUM(oi.item_price * oi.quantity),2) AS monetary
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY o.user_id
)
SELECT *
FROM rfm;

-- Running Revenue
SELECT
    order_date,
    SUM(total_amount) AS daily_sales,
    SUM(SUM(total_amount))
    OVER(ORDER BY order_date)
    AS running_revenue
FROM orders
GROUP BY order_date;

-- LAG Function
SELECT
    order_date,
    SUM(total_amount) AS sales,
    LAG(SUM(total_amount))
    OVER(ORDER BY order_date)
    AS previous_day_sales
FROM orders
GROUP BY order_date; 