--Advanced Level

--11. Create an anonymized version of customer emails in the format "F***L@domain.com",
-- where F is the first character of the first name
-- and L is the first character of the last name.

SELECT CONCAT(LEFT(first_name, 1),
               '***',
               SUBSTRING(email FROM POSITION('.' IN email)+1 FOR 1),
               SUBSTRING(email FROM POSITION('@' IN email))) AS anonym_email, email
FROM customer;

--12. Generate a simple customer ID by concatenating:
---The first 2 characters of their first name (uppercase)
---The last 2 characters of their last name (lowercase)
---The length of their email address

SELECT CONCAT(UPPER(LEFT(first_name, 2)),
              LOWER(RIGHT(last_name, 2)),
              LENGTH(email)) AS id, email
FROM customer;


--13. Display customer names
-- where the middle character(s) are replaced with asterisks.
-- For odd-length names, replace the middle character.
-- For even-length names, replace the two middle characters. (Hint: here)

-- for names with even length
SELECT CONCAT(LEFT(first_name, LENGTH(first_name)/2 - 1),
               '**',
           RIGHT(first_name, LENGTH(first_name)/2 - 1)), first_name
FROM customer
WHERE LENGTH(first_name)%2 = 0;

-- for names with odd length
SELECT CONCAT(LEFT(first_name, LENGTH(first_name)/2 ),
               '*',
           RIGHT(first_name, LENGTH(first_name)/2)), first_name
FROM customer
WHERE LENGTH(first_name)%2 = 1;


--SOLUTION

SELECT CONCAT(LEFT(first_name, LENGTH(first_name)/2 - 1 + LENGTH(first_name)%2),
               REPEAT('*',ABS(LENGTH(first_name)%2-2)),
           RIGHT(first_name, LENGTH(first_name)/2 - 1 + LENGTH(first_name)%2)) AS first_name_an,
       CONCAT(LEFT(last_name, LENGTH(last_name)/2 - 1 + LENGTH(last_name)%2),
               REPEAT('*',ABS(LENGTH(last_name)%2-2)),
           RIGHT(last_name, LENGTH(last_name)/2 - 1 + LENGTH(last_name)%2)) AS last_name_an,
       CONCAT(first_name, ' ', last_name) AS full_name
FROM customer;


--14. Create a query that reverses the order of characters in each customer's last name,
-- but keeps the first and last characters in their original positions.
SELECT CONCAT(LEFT(last_name, 1),
               REVERSE(SUBSTRING(last_name FROM 2 FOR (LENGTH(last_name) -2))),
           RIGHT(last_name, 1)) AS rev_name, last_name
FROM customer;

--15. List customers whose email addresses
-- don't follow the standard format of "firstname.lastname@domain.com".
SELECT * FROM customer
WHERE first_name != SUBSTRING(email FROM 1 FOR POSITION('.' IN email)-1)
OR
    last_name != SUBSTRING(email FROM POSITION('.' IN email)+1 FOR POSITION('@' IN email)-1-POSITION('.' IN email));

