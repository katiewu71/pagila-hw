/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */

SELECT
   actor_id
FROM
   actor
WHERE
   LEFT(first_name, 1) = 'J'
ORDER BY
   actor_id ASC;
