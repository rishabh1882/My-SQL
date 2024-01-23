# Exercise 1
select title from movies;
select director from movies;
select title, director from movies;
select title, year from movies;
select * from movies;
# Exercise 2
select title from movies where id=6;
select title,year from movies where year between 2000 and 2010;
select title, year from movies where year not between 2000 and 2010;
select title, year from movies where year <=2003;

# Exercie 3
SELECT title from movies where title like "Toy story%";
SELECT title, director from movies where director like "john lassester";
SELECT title, director from movies where director != "john lassester";
SELECT * from movies where title like "WALL-_";

