-- What is the name and the population of the most populated city in India?
SELECT name
FROM world.city 
WHERE CountryCode="IND"
Order by Population desc limit 1

--List the names of the countries having at least 3 cities with 3 million inhabitants.

SELECT co.Name ,count(*) as cityCount 
FROM world.city ci
JOIN world.country co
ON ci.CountryCode=co.Code
WHERE ci.Population>3000000
Group by co.name 
having cityCount >=3