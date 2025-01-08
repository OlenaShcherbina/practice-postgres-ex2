# PostgreSQL String Functions Practice Exercises

## Basic Level

1. List all customers' first names in uppercase and last names in lowercase.

2. Display the first 3 characters of each customer's email address alongside their full name.

3. Show the length of each customer's full name (first name + last name).

4. Extract the domain name from each customer's email address.

5. Concatenate each customer's first name and last name with a space in between.

## Intermediate Level

6. Create a username for each customer by concatenating the first 3 letters of their first name with the last 3 letters of their last name, all in lowercase.

7. Display customer names in the format "LASTNAME, F." where F is the first character of the first name.

8. List customers whose first name or last name contains more than 10 characters.

9. Extract the part of the email address before the '@' symbol for each customer.

10. Find the position of the dot (.) in customer email addresses and display it alongside the full email.

## Advanced Level

11. Create an anonymized version of customer emails in the format "F***L@domain.com", where F is the first character of the first name and L is the first character of the last name.

12. Generate a simple customer ID by concatenating:
    - The first 2 characters of their first name (uppercase)
    - The last 2 characters of their last name (lowercase)
    - The length of their email address

13. Display customer names where the middle character(s) are replaced with asterisks. For odd-length names, replace the middle character. For even-length names, replace the two middle characters.
(Hint: [here](https://www.w3schools.com/postgresql/postgresql_case.php))

15. Create a query that reverses the order of characters in each customer's last name, but keeps the first and last characters in their original positions.

16. List customers whose email addresses don't follow the standard format of "firstname.lastname@domain.com".

