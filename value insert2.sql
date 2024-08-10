describe department;
insert into department values('CSE','b-wing',1000,'Dr.Gadicha');

insert into department(dept_nm,wing,budget,HOD)
values('IT','A',1000,'DR.PATIL');

insert into department values
('mech','C',1000,'dr.zuhair'),
('civil','B',1000,'dr.bhurange'),
('AI&DS','A',1500,'DR.Chauhan'),
('EXTC','D',2000,'dr.shah');

update department
set wing='E'
where dept_nm='CSE';

update department
set wing='F'
where dept_nm='AI&DS';

Select * from department;

describe student;

insert into student values
(111,'Vikram','CSE',6.8),
(112,'Naveen','IT',8.2),
(125,'RAHUL','IT',7.4),
(123,'keval','AI&DS',6.9);

insert into student values
(114,'shital','mech',9.1),
(126,'shivam','civil',7.5),
(128,'neha','AI&DS',8.9);

insert into teacher values
(10101,	'Srinivas','CSE',	50000,5),
(10801	,'Suresh'	,'IT',48000,6),
(12121	,'mozart','AI&DS',	55000,5),
(18801	,'seema','mech',	38000,5),
(22222	,'einstain',	'AI&DS', 150000,8),
(45565,	'sneha'	,'CSE'	,65000,7),
(98345	,'kim ','EXTC',	80000,9),
(98665	,'ashok',	'mech',	56000,5),
(56783	,'priya'	,'IT',	52000,5),
(62432	,'shahid'	,'CSE',	48000,5),
(54345	,'riya'	,'civil',	40000,4);

describe teacher;
select * from teacher;

