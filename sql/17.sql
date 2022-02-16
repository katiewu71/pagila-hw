/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT country, sum(amount) as profit
FROM payment
INNER JOIN rental on payment.rental_id = rental.rental_id
INNER JOIN customer on rental.customer_id = customer.customer_id
INNER JOIN address on address.address_id = customer.address_id
INNER JOIN city on city.city_id = address.city_id
INNER JOIN country on country.country_id = city.country_id
GROUP BY country
ORDER BY country asc;
