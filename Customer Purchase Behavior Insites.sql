SELECT * FROM Customer


SELECT
	gender,
	SUM(purchase_amount) AS revenue
FROM Customer
GROUP BY gender



SELECT
	customer_id,
	purchase_amount
FROM Customer
WHERE discount_applied = 'Yes'
AND purchase_amount >= (
						SELECT AVG(purchase_amount)
						FROM Customer
						)



SELECT TOP 5
	item_purchased,
	ROUND(AVG(review_rating),2) AS avg_product_rating
FROM Customer
GROUP BY item_purchased
ORDER BY avg_product_rating DESC



SELECT
	shipping_type,
	ROUND(AVG(purchase_amount),2) AS average_purchase
FROM Customer
GROUP BY shipping_type
HAVING shipping_type IN ('Standard','Express')



SELECT 
	subscription_status,
	COUNT(customer_id) AS total_customer,
	AVG(purchase_amount) AS average_spend,
	SUM(purchase_amount) AS total_revenue
FROM Customer
GROUP BY subscription_status



SELECT TOP 5
	item_purchased,
	SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)*100/COUNT(*) AS percentage_purchased
FROM Customer
GROUP BY item_purchased
ORDER BY percentage_purchased DESC



(SELECT
	'New' AS customer_type,
	COUNT(*) AS total_customers,
	SUM(previous_purchases) AS number_of_purchases
FROM Customer
WHERE previous_purchases = 1)
UNION
(SELECT
	'Returning',
	COUNT(*),
	SUM(previous_purchases)
FROM Customer
WHERE previous_purchases BETWEEN 2 AND 10)
UNION
(SELECT
	'Loyal',
	COUNT(*),
	SUM(previous_purchases)
FROM Customer
WHERE previous_purchases > 10)



WITH item_counts AS (
SELECT
	category,
	item_purchased,
	COUNT(customer_id) AS total_orders,
	ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank

FROM customer
GROUP BY category, item_purchased
)
SELECT item_rank, category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <= 3



SELECT
	subscription_status,
	COUNT(customer_id) AS repeat_buyers
FROM Customer
WHERE previous_purchases > 5
GROUP BY subscription_status



SELECT
	age_group,
	SUM(purchase_amount) AS total_revenue
FROM Customer
GROUP BY age_group
ORDER BY total_revenue DESC