--Find the minimum and the maximum age of the actors per gender.

SELECT gender,max(age),min(age)
FROM imdb.actors
group by gender

--Find how many actors are in their 20’s, 30’s, 40’s, 50’s etc(grouped by decade).

select count(*), decade, decade + 9
from (select floor(age / 10) * 10 as decade
      from imdb.actors) t
group by decade
order by decade

--Add a column to the films table for storing the duration (runtime) or each film.

ALTER TABLE imdb.films
-> ADD COLUMN Duration TIME(3);

--Alter the data type of column age to INT.

ALTER TABLE imdb.actors MODIFY age INTEGER;