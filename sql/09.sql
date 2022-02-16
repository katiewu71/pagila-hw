/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT
   first_name,
   last_name,
   sum(amount)
FROM
   staff
   JOIN
      payment
      ON (staff.staff_id = payment.staff_id)
WHERE
   (
      date_part('year', payment_date) = '2020'
      and date_part('month', payment_date) = '01'
   )
GROUP BY
(first_name, last_name);
