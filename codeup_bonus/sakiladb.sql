-- Display the first and last names in all lowercase of all the actors.
SELECT LOWER(first_name) as 'first name', LOWER(last_name) as 'last name'
from actor;

-- You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." What is one query would you could use to obtain this information?

SELECT actor_id, first_name, last_name
from actor
where first_name = 'Joe';

-- Find all actors whose last name contain the letters "gen":

SELECT first_name, last_name
from actor
where last_name like '%gen%';

-- Find all actors whose last names contain the letters "li". This time, order the rows by last name and first name, in that order.

SELECT first_name, last_name
from actor
where last_name like '%li%'
Order by last_name, first_name;

-- Using IN, display the country_id and country columns for the following countries: Afghanistan, Bangladesh, and China:

SELECT country_id, country
FROM country
WHERE country IN('Afghanistan', 'Bangladesh', 'China');

-- List the last names of all the actors, as well as how many actors have that last name.

SELECT last_name, count(last_name)
from actor
GROUP BY last_name
ORDER BY count(last_name) desc;

-- List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors

SELECT last_name, count(last_name)
from actor
GROUP BY last_name
Having count(last_name) > 1;

-- You cannot locate the schema of the address table. Which query would you use to re-create it?

-- Use JOIN to display the first and last names, as well as the address, of each staff member.

-- Use JOIN to display the total amount rung up by each staff member in August of 2005.