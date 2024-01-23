create database practice;
use practice;
CREATE TABLE student (
    id INT primary key not null,
    name TEXT,
    marks INT
);
select* from student;
insert into student values
(01,"ABC",45);
insert into student values
(02,"DEF",50);
insert into student values
(03,"GHI",51);
select id, marks from student;

create table student_details(
id int primary key not null,
address text,
phone int);
select * from student_details;
-- 2nd day practice
use practice;
show tables;
select * from student;
CREATE TABLE movies (
    id 			INT PRIMARY KEY NOT NULL,
    title 		TEXT,
    director 	TEXT,
    year 		INT,
    length_minutes INT
);
insert into movies values (01, "Toy Story", "John Lassester", 1995, 81);
insert into movies values(02, "A Bug's Life", "John Lassester", 1998, 95);
insert into movies values(03, "Toy Story 2", "John Lassester", 1999, 93);
insert into movies values(04, "Monsters, Inc.", "Pete Doctor", 2001, 92);
insert into movies values(05, "Finding Nemo", "Andrew Stanton", 2003, 107);
insert into movies values(06, "The Incredibles", "Brad Bird", 2004, 116);
insert into movies values(07, "Cars", "John Lassester", 2006, 117);
insert into movies values(08, "Ratatouille", "Brad Bird", 2007, 115);
insert into movies values(09, "WALL-E", "Andrew Stanton", 2008, 104);
insert into movies values(10, "Up", "Pete Doctor", 2009, 101);
insert into movies values(11, "Toy Story 3", "Lee Unkrich", 2010, 103);
insert into movies values(12, "Cars 2", "John Lassester", 2011, 120);
insert into movies values(13, "Brave", "Brenda Chapman", 2012, 102);
insert into movies values(14, "Monsters University", "Dan Scanlon", 2013, 110);