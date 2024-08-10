select * from teacher
where salary=( select max(salary) from teacher as max_sal);

select * from teacher
where salary>(select salary from teacher where t_nm='Srinivas');


/*2nd highest salary*/
select max(salary) from teacher
where salary!=(select max(salary)from teacher as max_sal  );


select t.t_id,t.t_nm,t.salary
from teacher as t, teacher as k
where t.salary >k.salary and
k.t_nm='Srinivas';

