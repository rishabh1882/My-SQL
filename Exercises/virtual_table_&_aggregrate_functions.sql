use b88;
SELECT * from movie_sales;
select * from movies;
-- EXERCISE 9
# 1. List all movies and their combined sales in millions of dollars
SELECT 
    title,
    (domestic_sales + international_sales) / 1000000 AS combined_sales
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.movie_id;
# 2. List all movies and their ratings in percent 
SELECT 
    title, (rating) * 10 AS rating_percent
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.movie_id; 
# 3. List all the movies that were released on even years
SELECT 
    title, year
FROM
    movies
WHERE
    (year) % 2 = 0;
    
use b88;
select * from movie_sales;
 ## you can create a virtual table, it will not take much space in the memory   
CREATE VIEW mv1 AS
    (SELECT 
        title,
        (domestic_sales + international_sales) / 1000000 AS combined_sales
    FROM
        movies m
            INNER JOIN
        movie_sales m1 ON m.id = m1.movie_id);
select * from mv1;
-- practice question ( find the movie with maximum sales)
select  title, max(combined_sales) as max_sales
from mv1
group by title order by max_sales desc limit 1;

## EXERCISE 10
-- 1. Find the longest time that an employee has been at the studio.
select * from employee_building;
select name, max(years_employed) as max_employement
from employee_building
group by name order by max_employement desc limit 1;


-- 2. For each role find the average number of years employed by employees in that role
select distinct role, avg(years_employed) as average_years
from employee_building
group by role;

-- 3. Find the total number of employee years worked in each building
select distinct building, sum(years_employed) as total_years
from employee_building
group by building;