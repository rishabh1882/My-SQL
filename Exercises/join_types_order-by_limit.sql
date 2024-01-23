# Exercise 4
-- List all directors alphabetically without duplicates
use b88;
SELECT * FROM movies;
SELECT DISTINCT
    director
FROM
    movies
ORDER BY director ASC;
-- List the last 4 Pixar movies released(ordered from most recent to least)
SELECT * FROM movies;
select  Title, year from movies
order by year desc limit 4;

-- list first 5 pixar movies alphabetically
SELECT Title from movies
order by title ASC
limit 5;

-- list next 5 movies
Select title from movies
order by title ASC
limit 5 offset 5;

select * from movie_sales;

-- Exercise 6
-- Find the domestic and international sales of each movie
## we need to JOIN the 2 tables using INNER JOIN as it is having id column common
select title, domestic_sales, international_sales
from movies JOIN movie_sales 
on movies.id=movie_sales.movie_id;
-- Show the sales numbers for each movie that did better internationally rather than domestically
select title, international_sales, domestic_sales
from movies m join movie_sales m1
on m.id=m1.movie_id
WHERE international_sales > domestic_sales;
-- List all the movies by their ratings in descending order
SELECT 
    title, rating
FROM
    movies m
        JOIN
    movie_sales m1 ON m.id = m1.movie_id
ORDER BY rating DESC;

## Exercise 7
-- find the list of all buildings that have employees
select * from building_capacity;
select * from employee_building;
select distinct building from employee_building;
-- find the list of all buildings and their capacity
select * from building_capacity;
-- list all buildings and distinct employee roles in each building (including empty building)
SELECT DISTINCT
    building_name, role
FROM
    building_capacity b
        LEFT JOIN
    employee_building b1 ON b.building_name = b1.building;

## Exercise 8 (Null Values)
-- Find the name and role of all employees who have not been assigned to a building
use b88;
SELECT 
    name, role
FROM
    employee_building
WHERE
    building IS NULL;
-- Find the name of buildings that hold no employees
SELECT DISTINCT
    building_name
FROM
    building_capacity b
        LEFT JOIN
    employee_building b1 ON b.building_name = b1.building
WHERE
    role IS NULL;
