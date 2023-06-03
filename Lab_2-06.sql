
# Lab | SQL Queries 6

# In this activity we are going to do some database maintenance. In the current database we only have information on movies for the year 2006. Now we have received the film catalog for 2020 as well. For this new data we will create another table and bulk insert all the data there. Code to create a new table has been provided below.
USE sakila;

SELECT * FROM sakila.films_2020;

# We have just one item for each film, and all will be placed in the new table. For 2020, the rental duration will be 3 days, with an offer price of `2.99€` and a replacement cost of `8.99€` (these are all fixed values for all movies for this year). The catalog is in a CSV file named **films_2020.csv** that can be found at `files_for_lab` folder.

SET SQL_SAFE_UPDATES = 0;

UPDATE films_2020 SET
  rental_duration = 3,
  rental_rate = '2.99',
  replacement_cost = '8.99';

SELECT * FROM films_2020;

SET SQL_SAFE_UPDATES = 1;

### Instructions

-- Add the new films to the database.


-- Update information on `rental_duration`, `rental_rate`, and `replacement_cost`.

### Hint

-- You might have to use the following commands to set bulk import option to `ON`:

-- sql
-- show variables like 'local_infile';
-- set global local_infile = 1;


--  If bulk import gives an unexpected error, you can also use the `data_import_wizard` to insert data into the new table.
