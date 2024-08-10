select * from student;
create trigger capitalize
before insert 
on student
for each row
set new.s_nm=upper(new.s_nm);
insert into student values (131, 'kusumvati', 'CSE',98);

create table Medicines(med_nm varchar (15),units int ,price float );
insert into Medicines values 
('Asthaline', 30, 200.25),
('dolo-650',25,155.90),
('rotahealer',60,130),
('nicip-620', 25, 20);
alter table Medicines 
add primary key (med_nm);

select * from Medicines;

create table order_med(
med_nm varchar (15),
quantity int ,
date_of_order date,
foreign key (med_nm) references Medicines (med_nm));

/*Creating trigger*/
delimiter $$
create trigger order_medicine
after update on Medicines
for each row
begin
if new.units < 10 then 
insert into order_med values(new.med_nm, 100 ,sysdate());
end if;
end;
$$

update Medicines
set units=15
where med_nm='nicip-620';

update Medicines
set units=9
where med_nm='Asthaline';

update Medicines
set units=5
where med_nm='nicip-620';

select * from order_med;


