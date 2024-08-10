use sgbau;
select * from student
where cgpa>65 ;

delimiter $$
create procedure eigibility()
begin
select * from student
where cgpa>65;
end;
$$

call eigibility();


/*stored procedures with parameter*/
delimiter $$
create procedure eligible(in marks int)
begin
select * from student
where cgpa>=marks;
end;
$$

call eligible(75);


delimiter !!
create procedure comp_criteria(in marks int, in dept varchar(15))
begin
select * from student
where cgpa>=marks and dept_nm=dept;
end;
!!

call comp_criteria(80,'AI&DS');