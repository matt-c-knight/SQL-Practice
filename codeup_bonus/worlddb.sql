-- What languages are spoken in Santa Monica?


SELECT Language, Percentage 
from countrylanguage
join city using(CountryCode)
where city.Name = 'Santa Monica'
order by Percentage desc;

-- How many different countries are in each region?

SELECT Region, count(Region) as num_countries
from country
Group By Region
Order by num_countries asc;

-- What is the population for each region?

-- What is the population for each continent?

-- What is the average life expectancy globally?

-- What is the average life expectancy for each region, each continent? Sort the results from shortest to longest

