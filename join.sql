create database join_db1;
use join_db1;
create table student(id int primary key, name varchar(20),city varchar(20), passout_year int);
insert into student values
(101,'akshay','mumbai',2014),
(102,'dipali','nashhik',2018),
(103,'rohit','pune',2015),
(105,'apurva','kolhapur',2015),
(106,'pranit','amravati',2010),
(108,'nayan','yavatmal',2017),
(109,'sagar','dhule',2010),
(110,'shital','amaravti',2011);
 select * from student;
 
 create table placement(id int primary key ,company VARCHAR (20), city varchar(20),salary int);
 insert into placement values
 (101,'accenture','mumbai',58000),
(102,'accenture','mumbai',60000),
(104,'tcs','pune',45000),
(105,'infosys','pune',65000),
(107,'wipro','banglore',75000),
(108,'delloit','kolkata',68000),
(109,'pwc','banglore',80000),
(110,'infosys','pune',65000),
(111,'EY','kolkata',80000);
select * from placement;
