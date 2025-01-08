--Basic Level

--1. List all customers' first names in uppercase and last names in lowercase.
SELECT UPPER(first_name) AS first_name, LOWER(last_name) AS last_name
FROM customer;

--2. Display the first 3 characters of each customer's email address alongside their full name.

SELECT CONCAT(first_name, ' ' , last_name) AS full_name, LEFT(email, 3) AS email_3ch
FROM customer;

--3. Show the length of each customer's full name (first name + last name).
SELECT first_name, last_name, SUM(LENGTH(first_name) + LENGTH(last_name)) AS length
FROM customer
GROUP BY first_name, last_name;

--4. Extract the domain name from each customer's email address.
SELECT email, SUBSTRING(email FROM POSITION('@' IN email) +1) AS domain
FROM customer;

--5. Concatenate each customer's first name and last name with a space in between.

SELECT CONCAT(first_name, ' ' , last_name) AS full_name
FROM customer;