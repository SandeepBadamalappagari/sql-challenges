/* Q 1. Write query to make summary of table payment (calculate Total amount, average amount, minimum amount, maximum amount, 
variance of amount). Result set should give output as shown in figure 1 (schema - sakila).   */

USE sakila;
SELECT 'parameter','value' FROM payment
UNION 
SELECT 'Total Amount',SUM(amount) FROM payment
UNION 
SELECT 'Average Amount',AVG(amount) FROM payment
UNION
SELECT 'Minimum Amount', MIN(amount) FROM payment
UNION
SELECT 'Maximun Amount', MAX(amount) FROM payment
UNION
SELECT 'Variance Amount', VARIANCE(amount) FROM payment;

/* Q2. Write query to calculate Total amount, average amount, minimum amount of amount from table payment for customer group using window 
function. (schema - sakila). Output for result set is shown in figure 2.   */
SELECT payment_id, customer_id, staff_id, 
SUM(amount) OVER(PARTITION BY customer_id) TotalSum,
AVG(amount) OVER(PARTITION BY customer_id) Average,
MIN(amount) OVER(PARTITION BY customer_id) Minimum
FROM payment;

/* Q3. Write column name/s for below written tables in which null values are allowed (schema – sakila). (Hint: use DESC command) */

DESC Film_category;
DESC city;
DESC Address;
desc postal_code;
DESC  store;
DESC Film_actor;

/* Q 4. Write query to calculate the incline/decline for number of payments made on each date. (schema – sakila, table – payment). 
Output for result set is shown in figure 3.   */
USE sakila;
SELECT payment_date, count(payment_id)currentcount,
LAG(count(payment_id),1) OVER(ORDER BY DATE(payment_date))previouscount,
count(payment_id) - LAG(count(payment_id),1) OVER (ORDER BY DATE(payment_date))countDifference
FROM payment
GROUP BY DATE(payment_date)
ORDER BY DATE(payment_date);
