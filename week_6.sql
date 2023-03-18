/* Q 1. Write query to display result set shown in figure 1 using inner join (schema - sakila) */

USE sakila;
SELECT city.city_id, city.city, country.country_id, country.country FROM city INNER JOIN country WHERE country.country_id = city.country_id;

/* Q 2. Write query to join tables film, film_category and category using inner join. Result set should be like shown in figure  */

SELECT 
    film.film_id,
    film.title,
    film.description,
    film_category.category_id,
    category.name
FROM
    film
        INNER JOIN
    film_category on film.film_id = film_category.film_id
        INNER JOIN
    category on category.category_id = film_category.category_id;
    
/* Q 3. Write query to join tables film, inventory and film_text using left join. Result set should be like shown in figure  */

SELECT
	film.film_id,
    film.title,
    film.description,
    inventory.inventory_id,
    film_text.description
FROM
	film
LEFT JOIN
inventory ON film.film_id = inventory.inventory_id
LEFT JOIN
film_text ON film_text.film_id = inventory.inventory_id;

/* Q 4. "Write query to display the staff_id, first_name, last_name, amount, payment_date, rental_date and return_date from tables staff, payment and rental using inner join (schema - sakila)" */

SELECT s.staff_id, s.first_name, s.last_name, p.amount, p.payment_date, r.rental_date, r.return_date
FROM staff s INNER JOIN payment p ON s.staff_id = p.staff_id INNER JOIN rental r ON r.rental_id = p.rental_id;
    