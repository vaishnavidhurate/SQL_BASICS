use sgbau;
/*Show all data from student table*/
select * from student;

select s_nm ,cgpa
from student;

/*find student from CSE department*/
select s_nm,cgpa,dept_nm from student
where dept_nm='CSE' AND cgpa>=6.0;

select s_id ,s_nm,cgpa*10
from student;
update student
set cgpa= cgpa*10;

/*find student from IT department*/
select *from student
where dept_nm ='CSE'or dept_nm='IT'or dept_nm='mech';

select *from student
where dept_nm in ('CSE','IT','AI&DS');

select *from teacher
where salary>=50000 and (dept='CSE'or dept='IT');
    
select *from teacher
where salary>=50000 and dept in ('CSE','IT');
    
/*select salary which is less than or equal to 45000 and greater than equal to */
select *from teacher
where salary>=45000 and salary<=75000;
    
#OR

select * from teacher
where salary between 45000 and 75000;
    
select* from teacher
order by salary desc;    
    
select* from teacher
order by salary;

select * from teacher 
order by salary desc,t_nm asc;

/*find the teacher with highest salary -- here if 2 person exist with same salary still it will show the only one 
which  is at topmost */
select * from teacher
order by salary desc, t_nm asc
limit 1;

/*find total no of department */
select count(dept_nm) as total_dept from student; 
 
 /*find department with budget more than 1000*/
select dept_nm from department 
where budget> 1000;

select count(dept_nm)as high_budget
from department
where budget>1000;

select sum(salary) as total_salary from teacher;

select avg(salary) as avg_salary from teacher;

/*group by clause*/
/*find the average salary from each department*/
select dept, avg(salary)as average_dept_salary
from teacher
group by dept;

select dept, count(t_id)
from teacher
group by dept;

select dept,sum(salary)
from teacher
group by dept
having sum(salary)>10000;

/*find min exp of teachers more han 55000*/
select dept,min(exp)
from teacher
where salary>55000
group by dept;

/*show the count of teacher in a department considering teachers with 
more than  years experience and dispaly as a result only if count is
more than 1*/
select dept, count(t_id)
from teacher
where expr>=5
group  by dept
having count(t_id)>1;

select * from student;

/*4.find dept nm having  highest +average salary*/
select dept,avg(salary) as average_salary
from teacher
group by dept
order by average_salary desc
limit 1;

/*2.find count of students in each department and show those department where student count
is greater than or equal to 2*/
select dept_nm, count(s_id)
from student
group by dept_nm;

select dept_nm, count(s_id)
from student
group by dept_nm
having count(s_id)>=2;

/*1.find highest cgpa from each department*/
select dept_nm ,max(cgpa) as highest_cgpa
from student
group by dept_nm
order by highest_cgpa desc;


/*5.find dept with least and highest no of student*/
select dept_nm,count(s_id)as highest_no_of_student
from student
group by dept_nm
order by highest_no_of_student desc
limit 1;

select dept_nm,count(s_id)as least_no_of_student
from student
group by dept_nm
order by least_no_of_student asc
limit 1;

/*find average CGPA of CSE, iT and civil departemnt*/

select dept_nm, avg(cgpa) as average_cgpa
from student
where dept_nm= 'CSE' or'IT' or 'civil'
group by dept_nm 
order by average_cgpa desc
;

/*find teachers info whose salary is greater than avg salary from teacher*/
select  t_id, dept,expr,t_nm ,salary
from teacher
where salary >(select avg(salary)from teacher);

/*  with clause*/
with average_salary (avg_sal)as/*temp table name*/
(select avg(salary)from teacher)

select t_id,t_nm,t.salary from teacher as t, average_salary as avs
where t.salary>avs.avg_sal;

/*airlines table*/
