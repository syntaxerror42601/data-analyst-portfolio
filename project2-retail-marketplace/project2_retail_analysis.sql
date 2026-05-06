-- Retail & Marketplace Operations Analysis
-- Dataset: Olist Brazilian E-commerce | ~100K orders across 6 tables
-- Tools: MySQL, DBeaver
-- Author: [Abraham Molina]

USE olist_retail;
SELECT * FROM orders;
SELECT * FROM customers;
SELECT * FROM payments;
SELECT * FROM order_items;
SELECT * FROM products;
SELECT * FROM reviews;


-- Q1: Monthly order value
SELECT DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month, 
	   COUNT(*),
	   COUNT(CASE WHEN order_status = 'delivered'THEN 1 END) AS delivered,
	   COUNT(CASE WHEN order_status = 'canceled' THEN 1 END) AS canceled
FROM orders
GROUP BY month
ORDER BY month;

-- Q2; Delivery time by state
SELECT c.customer_state,
       ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)),1) AS avg_delivery_days 
FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_purchase_timestamp IS NOT NULL 
  AND o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_delivery_days DESC;

-- Q3; Monthly revenue by payment type for orders marked as 'delivered'
SELECT DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
	   p.payment_type AS payment_type,
	   ROUND(SUM(p.payment_value),2) AS total_revenue,
	   ROUND(AVG(p.payment_value),2) AS avg_order_value,
	   COUNT(DISTINCT o.order_id) AS order_count
FROM orders o INNER JOIN payments p on o.order_id = p.order_id
WHERE o.order_status  = 'delivered'
GROUP BY month, payment_type
ORDER BY month, total_revenue;

-- Q5; Top 15 product categories with revenue ranked
SELECT prod.product_category_name AS product_category,
 	   ROUND(SUM(oi.price),2) as total_revenue,
 	   ROUND(AVG(oi.price),2) as avg_price,
 	   COUNT(oi.product_id) as order_count,
 	   RANK() OVER(ORDER BY ROUND(SUM(oi.price),2) DESC) as revenue_rank
FROM products prod INNER JOIN order_items oi ON prod.product_id = oi.product_id
GROUP BY product_category
LIMIT 15;

-- Q5:CTE: Delivery time vs customer satisfaction by state
WITH delivery_scores AS 
	(SELECT c.customer_state AS state, 
		   DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp) AS delivery_days,
		   r.review_score AS customer_review
	 FROM customers c
	 INNER JOIN orders o ON c.customer_id = o.customer_id 
	 INNER JOIN reviews r ON o.order_id = r.order_id)
	
SELECT state, 
	   ROUND(AVG(delivery_days),1) AS avg_delivery_days, 
	   ROUND(AVG(customer_review),2) AS avg_customer_review,
	   COUNT(*) AS order_count,
	   NTILE(5) OVER(ORDER BY ROUND(AVG(delivery_days),1)) AS quartile
FROM delivery_scores
GROUP BY state
ORDER by avg_delivery_days;

-- Q6: Seller performance ranking by Gross Merchandise Value
SELECT oi.seller_id AS seller_id,
	   COUNT(DISTINCT oi.order_id) AS orders_fulfilled,
	   ROUND(SUM(oi.price),2) AS gmv,
	   ROUND(AVG(r.review_score),2) AS avg_customer_review,
	   NTILE(4) OVER(ORDER BY SUM(oi.price) DESC) AS gmv_quartile
FROM order_items oi
INNER JOIN reviews r ON oi.order_id = r.order_id
GROUP BY oi.seller_id
LIMIT 20;


-- Q6B: Average review score per quartile
SELECT  gmv_quartile,
  		COUNT(*) AS seller_count,
  		ROUND(AVG(GMV), 2) AS avg_gmv,
 		ROUND(AVG(avg_customer_review), 2) AS avg_review
FROM (
	SELECT oi.seller_id AS seller_id,
		   COUNT(DISTINCT oi.order_id) AS orders_fulfilled,
		   ROUND(SUM(oi.price),2) AS gmv,
		   ROUND(AVG(r.review_score),2) AS avg_customer_review,
		   NTILE(4) OVER(ORDER BY SUM(oi.price) DESC) AS gmv_quartile
	FROM order_items oi
		 INNER JOIN reviews r ON oi.order_id = r.order_id
	GROUP BY oi.seller_id
	) AS ranked_sellers
GROUP BY gmv_quartile
ORDER BY gmv_quartile;	

-- Q7: Month-over-month order volume and revenue growth (LAG)
WITH month_cte AS 
	(SELECT DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
         COUNT(*) AS order_count,
         ROUND(SUM(p.payment_value),2) AS total_revenue
 	 FROM orders o 
  	 INNER JOIN payments p ON o.order_id = p.order_id
  	 WHERE o.order_status = 'delivered'
  	 GROUP BY month
  	 ORDER BY month)
  
SELECT month,
       order_count,
       total_revenue,
       LAG(order_count,1) OVER(ORDER BY month) AS previous_order_count,
       ROUND((order_count - LAG(order_count,1) OVER(ORDER BY month))
             / LAG(order_count,1) OVER(ORDER BY month) * 100,1) AS orders_growth_pct,
       ROUND((total_revenue - LAG(total_revenue,1) OVER(ORDER BY month))
             / LAG(total_revenue,1) OVER(ORDER BY month) * 100,1) AS revenue_growth_pct
FROM month_cte;




