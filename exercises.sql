-- What is the name and the population of the most populated city in India?
SELECT name
FROM world.city 
WHERE CountryCode="IND"
Order by Population desc limit 1