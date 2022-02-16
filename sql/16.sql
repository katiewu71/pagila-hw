/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */ 

SELECT title, sum(amount) as profit
FROM payment
INNER JOIN rental on payment.rental_id = rental.rental_id
INNER JOIN inventory on inventory.inventory_id = rental.inventory_id
INNER JOIN film on film.film_id = inventory.film_id
GROUP BY title
ORDER BY profit desc;
