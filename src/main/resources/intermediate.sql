--Intermediate Level

--6. Create a username for each customer by concatenating
-- the first 3 letters of their first name with the last 3 letters of their last name,
-- all in lowercase.

SELECT LOWER(CONCAT(LEFT(first_name, 3), RIGHT(last_name, 3))) AS username, first_name, last_name
FROM customer
GROUP BY first_name, last_name;

--7. Display customer names in the format "LASTNAME, F."
-- where F is the first character of the first name.
SELECT UPPER(CONCAT(last_name, ', ', LEFT(first_name, 1), '.')) AS name, last_name, first_name
FROM customer
GROUP BY last_name, first_name;

--8. List customers whose first name or last name contains more than 10 characters.
SELECT *
FROM customer
WHERE LENGTH(first_name) >10
   OR LENGTH(last_name) >10;

--9. Extract the part of the email address before the '@' symbol for each customer.
SELECT SUBSTRING(email FROM 1 FOR(POSITION('@' IN email)-1)) AS part_email, email
FROM customer;

--OR
SELECT LEFT(email, POSITION('@' IN email)-1) AS part_email, email
FROM customer;

--10. Find the position of the dot (.) in customer email addresses
-- and display it alongside the full email.

SELECT POSITION('.' IN email) AS dot_position, email
FROM customer;