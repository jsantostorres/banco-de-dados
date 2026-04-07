USE sakila;

SHOW TABLES;

-- SELECT
SELECT * FROM actor;
SELECT * FROM actor_info;
SELECT * FROM address;
SELECT * FROM category;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM customer;
SELECT * FROM customer_list;
SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM film_category;
SELECT * FROM film_list;
SELECT * FROM film_text;
SELECT * FROM inventory;
SELECT * FROM language;
SELECT * FROM nicer_but_slower_film_list;
SELECT * FROM payment;
SELECT * FROM rental;
SELECT * FROM sales_by_film_category;
SELECT * FROM sales_by_store;
SELECT * FROM staff;
SELECT * FROM staff_list;
SELECT * FROM store;

SELECT first_name, last_name FROM customer;
SELECT * FROM film WHERE length > 120;
SELECT * FROM film WHERE release_year = 2006;
SELECT * FROM customer WHERE active = 1;

-- JOIN
SELECT rental.*, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer
ON rental.customer_id = customer.customer_id;

SELECT payment.amount, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT film.title, rental.customer_id, customer.first_name, customer.last_name, inventory.film_id
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id;

SELECT staff_list.name, store.store_id AS store, address.address, address.district
FROM staff_list
INNER JOIN staff ON staff_list.ID = staff.staff_id
INNER JOIN store ON staff.store_id = store.store_id
INNER JOIN address ON store.address_id = address.address_id;

SELECT film_category.film_id, film.title, category.name AS category
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id;

-- AGREGAÇÃO
SELECT COUNT(*) AS total_customers FROM customer;
SELECT SUM(amount) AS total_payments FROM payment;
SELECT AVG(amount) AS average_payments FROM payment;
