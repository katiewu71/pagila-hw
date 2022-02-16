/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT
   film.film_id,
   title,
   count(*)
FROM
   film
   JOIN
      inventory
      ON (film.film_id = inventory.film_id)
WHERE
   (LEFT(title, 1) = 'H')
GROUP BY
   film.film_id,
   title
ORDER BY
   title desc;
