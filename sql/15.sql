/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT NAME,
       Count(*) AS sum
FROM   category
       JOIN (SELECT category_id,
                    film_category.film_id
             FROM   film_category
                    JOIN (SELECT language.NAME,
                                 film.language_id,
                                 film_id
                          FROM   film
                                 JOIN language
                                   ON ( film.language_id =
                                      language.language_id )
                          WHERE  NAME = 'English') l
                      ON ( film_category.film_id = l.film_id )) c
         ON ( c.category_id = category.category_id )
GROUP  BY NAME;

