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

--What is the number of all the official languages? 
SELECT count(c.Name) 
FROM world.country c
join world.countrylanguage l
on l.CountryCode = c.Code
WHERE IsOfficial ="T"

--List the country name and their official languages.?
SELECT c.Name ,l.Language
FROM world.country c
join world.countrylanguage l
on l.CountryCode = c.Code
WHERE IsOfficial ="T"

--All countries that have only one official language

SELECT c.Name
FROM world.country c
join world.countrylanguage l
on l.CountryCode = c.Code
WHERE IsOfficial ="T"
group by c.Name
having count(1)=1

--Find which countries have not a capital

SELECT name 
FROM world.country
WHERE Capital  IS NULL

--which country has lowest population

SELECT Name , Population
FROM world.country
order by Population
limit 1

--all the languages spoken in Eastern Africa

SELECT Language
FROM world.country c
join world.countrylanguage l
on l.CountryCode =c.Code
where Region="Eastern Africa"