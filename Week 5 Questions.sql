-- 1.How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(*) 
FROM actors
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(*) AS NumberOfPayments
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(*) as num_copies
FROM inventory
GROUP BY film_id
ORDER BY num_copies DESC
LIMIT 1;
--4. How many customers have the last name ‘William’?
SELECT COUNT(*) AS TotalCustomers
FROM customers
WHERE last_name = 'William';
--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(*) AS rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;
--6. How many different district names are there?
SELECT COUNT(DISTINCT district) AS num_districts
FROM address a ;
--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*) 
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(*) AS number_of_rentals
FROM payment p
JOIN rental r ON p.customer_id = r.customer_id
WHERE p.customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;
--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT COUNT(DISTINCT rating) AS number_of_rating_categories
FROM film;
SELECT rating, COUNT(*) AS number_of_movies
FROM film
GROUP BY rating
ORDER BY number_of_movies DESC
LIMIT 1;





