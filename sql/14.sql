/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT title
FROM category
INNER JOIN film_category on category.category_id = film_category.category_id
INNER JOIN film on film.film_id = film_category.film_id
WHERE NAME = 'Family';
