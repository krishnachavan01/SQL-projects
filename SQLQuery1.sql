CREATE TABLE sales (
  "customer_id" VARCHAR(1),
  "order_date" DATE,
  "product_id" INTEGER
);

INSERT INTO sales
  ("customer_id", "order_date", "product_id")
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 

CREATE TABLE menu (
  "product_id" INTEGER,
  "product_name" VARCHAR(5),
  "price" INTEGER
);

INSERT INTO menu
  ("product_id", "product_name", "price")
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  

CREATE TABLE members (
  "customer_id" VARCHAR(1),
  "join_date" DATE
);

INSERT INTO members
  ("customer_id", "join_date")
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');

SELECT * FROM sales

SELECT * FROM menu

SELECT * FROM members

SELECT customer_id, SUM(price)
FROM sales
LEFT JOIN menu ON sales.product_id=menu.product_id
GROUP BY customer_id
ORDER BY customer_id;



SELECT customer_id, COUNT(DISTINCT order_date) AS days_visited
FROM sales
GROUP BY customer_id
ORDER BY customer_id;



WITH first_order_date AS 
(SELECT customer_id, MIN(order_date) AS f
FROM sales
GROUP BY customer_id)

SELECT customer_id, order_date, product_name
FROM sales
JOIN menu ON sales.product_id=menu.product_id
WHERE order_date IN (SELECT f FROM first_order_date)
GROUP BY customer_id, order_date, product_name;



with favourite_dish AS(SELECT product_id, COUNT(product_id) AS purchased_times
FROM sales
GROUP BY product_id)

SELECT favourite_dish.product_id, menu.product_name, favourite_dish.purchased_times FROM favourite_dish
JOIN menu ON favourite_dish.product_id=menu.product_id
ORDER BY purchased_times DESC;



WITH total_orders AS (SELECT sales.customer_id, COUNT(sales.product_id) AS Num_orders,
product_name
FROM sales
INNER JOIN menu
ON sales.product_id=menu.product_id
GROUP BY customer_id,product_name
)

SELECT customer_id,Num_orders, product_name, DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY Num_orders DESC) AS most_purchased
FROM total_orders
ORDER BY customer_id;



WITH first_order AS(SELECT members.customer_id, members.join_date, sales.order_date,sales.product_id, DENSE_RANK() OVER(PARTITION BY members.customer_id ORDER BY sales.order_date) AS Run
FROM members
JOIN sales
ON members.customer_id=sales.customer_id
WHERE sales.order_date>members.join_date)

SELECT first_order.customer_id,first_order.join_date, first_order.order_date, menu.product_name
FROM first_order
JOIN menu ON first_order.product_id=menu.product_id
WHERE Run=1;








WITH first_order_before AS(SELECT members.customer_id, members.join_date, sales.order_date,sales.product_id, DENSE_RANK() OVER(PARTITION BY members.customer_id ORDER BY sales.order_date DESC) AS Run
FROM members
JOIN sales
ON members.customer_id=sales.customer_id
WHERE sales.order_date<members.join_date)

SELECT first_order_before.customer_id,first_order_before.join_date, first_order_before.order_date, menu.product_name
FROM first_order_before
JOIN menu ON first_order_before.product_id=menu.product_id
WHERE Run=1;


WITH first_order_before_member AS(SELECT members.customer_id, menu.price, members.join_date, sales.order_date,sales.product_id, DENSE_RANK() OVER(PARTITION BY members.customer_id ORDER BY sales.order_date DESC) AS Run
FROM sales
JOIN members ON sales.customer_id=members.customer_id
JOIN menu
ON sales.product_id=menu.product_id
WHERE sales.order_date<members.join_date)


SELECT first_order_before_member.customer_id, COUNT(*) AS no_of_orders, SUM(price) AS total_price
FROM first_order_before_member
GROUP BY first_order_before_member.customer_id;




WITH Points AS 
(SELECT customer_id, product_id, CASE WHEN product_id=1 THEN 200 WHEN product_id=2 THEN 150 ELSE 120 END AS points FROM sales)

SELECT Points.customer_id, SUM(points) AS total_points
FROM Points
GROUP BY Points.customer_id


SELECT * FROM sales
SELECT * FROM members
SELECT * FROM menu

