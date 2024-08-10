use sgbau;
select * from teacher;

create view faculty
as
select t_id,t_nm,dept,expr
from teacher;

/*find count of faculaties in each department*/
select dept, count(t_id)
from faculty
group by dept;

insert into faculty values (10346,'sharad','mech',6.7);
 /*the operator has accesed to only 4 colums hence the remaininng column is null*/
update faculty
set expr=9
where t_id=10101;

/* if you to put value to updated then it can get updated to the main table but by the DBA*/
update teacher
set salary=45000
where t_id=10346;

