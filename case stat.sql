create database demo_examples;
use demo_examples;

create table triangle
(A int, B int, C int);

insert into triangle values
(20,20,23),
(20,20,20),
(22,21,23),
(13,14,15);

select * from triangle;

select * from triangle
where A=B and B=C and A=C;

/*Case Statement*/
select A,B,C,
(case
when (A+B <=C or A+C <=B OR B+C <=A)THEN'NOT A TRIANGLE'
when (A=B AND B=C AND A=C) THEN 'Equilateral triangle'
when (A=B or B=C or A=C) THEN 'Isosceles triangle'
when (A <> B AND B <> C AND C <> A)THEN'Scelene'
end) as status
from triangle;


UPDATE triangle
set c= 30
where c= 15;


/*Rank Function*/
select * from student;

select s_id, s_nm, cgpa, rank() over(order by cgpa desc) as rankings,
dense_rank()over(order by cgpa desc)as ranks 
from student;