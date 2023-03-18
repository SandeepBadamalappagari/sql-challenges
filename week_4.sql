-- 1. Write query to select film_id, title, length of title, description (to be displayed in upper case) from table film (schema - sakila).

USE sakila;
SELECT * FROM film;
SELECT 
    film_id Film_ID,
    title Title,
    LENGTH(title) Length_Of_Title,
    UPPER(description) Description_In_Upper
FROM
    film;

-- 2. Write query to display result set shown in figure 1  from table film (schema - sakila).
 SELECT 
    REPEAT(title, 3) title
FROM
    film;
    
-- 3. Write query to display result set shown in figure 2 from table film (schema - sakila). 

SELECT * FROM film;
SELECT 
    film_id, title, LEFT(description, 13) description
FROM
    film;

 -- 4. Write query to display result set shown in figure 3 from table film (schema - sakila).
 
SELECT * FROM film;
SELECT 
    title, CONCAT(REVERSE(title), REVERSE(title)) codeword
FROM
    film;

-- 5. Write query to display number of days since the last update in table actor (schema - sakila).

SELECT * FROM film;
SELECT 
    DATEDIFF(CURRENT_TIMESTAMP(), last_update) Number_Of_Days
FROM
    film;
    
-- OR WE ALSO WRITE AS

SELECT 
    DATEDIFF(NOW(), last_update) Number_Of_Days
FROM
    film;

-- 6.  Write query to display result set shown in figure 4 from table customer (schema - sakila).
SELECT * FROM film;
SELECT 
    CONVERT( last_update , DATETIME) AS create_date,
    CONVERT( last_update , DATE) DATE,
    CONVERT( last_update , TIME) Time
FROM
    film;
