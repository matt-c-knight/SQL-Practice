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


SELECT region, sum(population) as population
from country
group by region
order by population desc;

-- What is the population for each continent?

SELECT continent, sum(population) as population
from country
group by continent
order by population desc;

-- What is the average life expectancy globally?

SELECT avg(LifeExpectancy)
from country;

-- What is the average life expectancy for each region, each continent? Sort the results from shortest to longest

SELECT Continent, avg(LifeExpectancy) as life_expectancy
from country
GROUP BY Continent
ORDER BY life_expectancy asc;

SELECT Region, avg(LifeExpectancy) as life_expectancy
from country
GROUP BY Region
ORDER BY life_expectancy asc;