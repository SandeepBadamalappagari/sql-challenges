/* Q 1. Write a query to create a view active_customer with all details of customer belonging to store id 1 and with active status = 1
(schema – sakila, table - customer ).   */
 USE sakila;
CREATE OR REPLACE VIEW active_customer AS SELECT * FROM customer WHERE store_id=1;

/*  Q 2. Write query to create view customer_detail that list the customer detail including city name and address also. (schema – sakila)  */
CREATE OR REPLACE VIEW customer_details AS
SELECT c.customer_id,c.first_name,c.last_name,c.email,a.address,ci.city
FROM customer c 
INNER JOIN
address a ON c.address_id = a.address_id
INNER JOIN
city ci ON a.city_id = ci.city_id;

