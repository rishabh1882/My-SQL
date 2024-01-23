--  activate a database
use b88;
create table student (
id int primary key not null,
name text,
marks int
);
select * from student;
insert into student values
(01,"Rahul", 45);
insert into student values
(02,"Rishabh", 50);
insert into student values
(03,"Param", 55);
-- show me only id and marks
select id, marks from student;
-- create another table in the same database as student_details
create table student_details(
id int primary key not null,
address text,
phone int);