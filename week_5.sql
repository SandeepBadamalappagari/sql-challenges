/* Q1. Write a single query to select payment_id, customer_id, staff_id, rental_id, amount from table payment (schema - sakila) which satisfies both below mentioned conditions.
Range for customer_id 10,20,30,40,50,60,70,80,90,100
staff_id is 2  */

USE sakila;
SELECT payment_id, customer_id, staff_id, rental_id, amount FROM payment
WHERE customer_id IN(10,20,30,40,50,60,70,80,90,100) AND staff_id = 2;

/* Q2. Write query to display record of table film (schema - sakila) ordered by rating in descending order. */

SELECT * FROM film ORDER BY rating DESC;

/* Q3. Write a single query to display payment_id, amount and updated_amount from table payment (schema - sakila) which supports the result set with below mentioned criteria.
amount is greater than 5.0
updated_amount is double of amount and rounded off  */

SELECT payment_id, amount, ROUND(amount * 2) updated_amount FROM payment WHERE amount > 5;

/* Q4. Write a single query to display below mentioned values from table payment for each customer (customer_id) (schema - sakila)
customer_id 
Total sum of the payment
Average of the payment
Standard deviation of the payment
Variance of the payment    */
USE sakila;
SELECT 
customer_id,
SUM(amount) Total_sum_of_the_payment,
AVG(amount) Average_of_the_payment,
STDDEV(amount) Standard_deviation_of_the_payment,
VARIANCE(amount) Variance_of_the_payment 
FROM payment GROUP BY customer_id;

/* Q5. Write a query to display city_id, city, country_id from table city for country name starting with A and B (schema - sakila) (Hint: Use subquery) */

SELECT city_id, city, country_id
FROM city
WHERE country_id IN ( SELECT 
country_id FROM country 
WHERE country LIKE 'A%' OR country LIKE 'B%');

/* Q6. What is the difference between ANY and ALL keywords with respect to subquery in SQL? (MCQ)

a. ALL – Comparison with every value ANY – Comparison with atleast one value
b. ALL – Comparison with atleast one value ANY – Comparison with every value
c. ALL – Comparison with every value ANY – Comparison with atleast two value
d. ALL – Comparison with atleast two value ANY – Comparison with atleast one value   */

-- option A is answer
