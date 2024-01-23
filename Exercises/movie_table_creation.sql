use b88;
show tables;
select * from student;

create table movies(
id 		int primary key not null,
title 		text,
director	 text,
year		 int,
length_minutes int
);
-- insert records
insert into movies values(01, "Toy Story", "John Lassester", 1995, 81);
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

