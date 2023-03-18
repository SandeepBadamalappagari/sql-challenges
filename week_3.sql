/* Q1. Write query to select all record from table customer (schema - sakila).*/
USE sakila;
SELECT * FROM customer;
/* Q2. Write query to select record from table customer for fields customer_id (Alias - ID), first_name (FName), last_name (LName), email (EmailID) (schema - sakila).*/
SELECT customer_id ID,first_name FName,last_name LName, email EmailID FROM customer;

/* Q3. Write query to display film title starting with alphabet ‘A’ and ending with alphabet ‘r’ from table film (schema - sakila).*/
SELECT title FROM film
WHERE title LIKE 'A%r';

/* Q4. Write query to display first 100 records from table customer (schema - sakila).*/
SELECT * FROM customer
WHERE customer_id LIMIT 100;

/* Q5. Write query to display payment_id, amount, rounded off value of amount and square root of amount from table payment (schema - sakila) in single statement.*/
SELECT payment_id	ROUND(amount)

/* Q6. Create backup for schema – sakila.*/
CREATE DATABASE Backsakila;
USE Backsakila;
SELECT * FROM customer;