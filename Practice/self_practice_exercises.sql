use practice;
select * from movies;
-- Exercise 1
select title from movies;
select director from movies;
select title, director from movies;
select title, year from movies;
select * from movies;
-- Exercise 2
select title from movies
where id=6;
select title, year from movies where year between 2000 and 2010;
select title, year from movies where year not between 2000 and 2010;
select title, year from movies where year <=2003;
-- Exercise 3
select title, director from movies where title like "Toy Story%";
select title, director from movies where director like "John%";
select title, director from movies where director!= "John Lassester";
select * from movies where title like "WALL-%";
-- 	Exercise 4
use practice;
SELECT DISTINCT
    (director)
FROM
    movies
ORDER BY director ASC;
SELECT 
    title, year
FROM
    movies
ORDER BY year DESC
LIMIT 4;
SELECT 
    title, year
FROM
    movies
ORDER BY title asc
LIMIT 5 offset 5;

-- Exercise 6
-- imported Movie_sales file here
select * from movie_sales; 
select * from movies;
SELECT 
    title, domestic_sales, international_sales
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.movie_id;
SELECT 
    title, domestic_sales, international_sales
FROM
    movies m
        JOIN
    movie_sales m1 ON m.id = m1.movie_id
WHERE
    international_sales > domestic_sales;
    
SELECT 
    title, rating
FROM
    movies m
        JOIN
    movie_sales m1 ON m.id = m1.movie_id
ORDER BY rating DESC;

-- Exercise 7
select * from building_capacity;
select * from employee_building;
SELECT DISTINCT
    building
FROM
    employee_building;
select * from building_capacity;
SELECT DISTINCT
    building_name, role
FROM
    building_capacity b
        LEFT JOIN
    employee_building b1 ON b.building_name = b1.building;
-- Exercise 8
SELECT 
    name, role
FROM
    employee_building
WHERE
    building IS NULL;
SELECT 
    building_name
FROM
    building_capacity b
        LEFT JOIN
    employee_building b1 ON b.building_name = b1.building
WHERE
    role IS NULL;
-- exercise 9
select * from movies;
select * from movie_sales;
create view mv1 as 
(
SELECT 
    title,
    (domestic_sales + international_sales) / 1000000 AS combined_sales
FROM
    movies m
        JOIN
    movie_sales m1 ON m.id = m1.movie_id);
SELECT 
    title, (rating * 10) AS Rating_percent
FROM
    movies m
        JOIN
    movie_sales m1 ON m.id = m1.movie_id;
SELECT 
    title, year
FROM
    movies
WHERE
    (year % 2) = 0;
-- Exercise 10
select * from mv1;
select title, max(combined_sales) as max_sales from mv1
group by title order by max_sales desc limit 1;
SELECT 
    name, MAX(years_employed) AS max_tenure
FROM
    employee_building
GROUP BY name
ORDER BY max_tenure DESC
LIMIT 1;
SELECT DISTINCT
    role, AVG(years_employed) AS average_years
FROM
    employee_building
GROUP BY role;

-- Exercise 11
 
select * from employee_building;
SELECT 
    role, COUNT(*) AS number_of_artist
FROM
    employee_building
WHERE
    role = 'artist';
SELECT 
    role, COUNT(*)
FROM
    employee_building
GROUP BY role;
SELECT 
    role, SUM(years_employed)
FROM
    employee_building
GROUP BY role
HAVING role = 'engineer';
