/*
 * Project: hw_5
 * Author: Tashmatov Bektur
 */
---------- 1 ----------
SELECT *
FROM customer
WHERE country IN ('Canada');

---------- 2 ----------
SELECT country
FROM customer
GROUP BY country;

---------- 3 ----------
SELECT COUNT(*)
FROM orders;

---------- 4 ----------
SELECT MAX(total_amount)
FROM orders;

---------- 5 ----------
SELECT SUM(total_amount)
FROM orders;

---------- 6 ----------
SELECT SUM(total_amount)
FROM orders
WHERE order_date BETWEEN '2014-01-01' AND '2014-12-31';

---------- 7 ----------
SELECT AVG(total_amount)
FROM orders;

---------- 8 ----------
SELECT customer_id, AVG(total_amount) AS Product_num
FROM orders
GROUP BY customer_id;

---------- 9 ----------
SELECT *
FROM customer
WHERE country IN ('Brazil', 'Spain');

---------- 10 ----------
SELECT *
FROM orders
WHERE order_date BETWEEN '2013-01-01' AND '2014-12-31'
  AND total_amount < 100;

---------- 11 ----------
SELECT *
FROM customer
WHERE country IN ('Italy', 'Spain', 'Germany', 'France')
ORDER BY country DESC;

---------- 12 ----------
SELECT DISTINCT country
FROM customer
WHERE EXISTS(SELECT *
             FROM supplier
             WHERE customer.country = supplier.country);

---------- 13 ----------
SELECT *
FROM customer
WHERE first_name LIKE 'Jo%';

---------- 14 ----------
SELECT *
FROM customer
WHERE first_name LIKE '___a';

---------- 15 ----------
SELECT country, COUNT(*) AS countryCount
FROM customer
GROUP BY country;

---------- 16 ----------
SELECT country, COUNT(*) AS countryCount
FROM customer
GROUP BY country
ORDER BY countryCount DESC;

---------- 17 ----------
SELECT customer_id, SUM(total_amount), COUNT(*) AS quantity
FROM orders
GROUP BY customer_id
ORDER BY SUM(total_amount) ASC;

---------- 18 ----------
SELECT customer_id, SUM(total_amount), COUNT(*) AS quantity
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 20;