use pqr;
select * from result;

insert into result values
('Sagar', 'OS','CSE',59),
('Akash','DBMS','IT',68),
('Prakash','OS','CSE',78);

/*rank student based on subject's marks within theur respective 
department and subject*/
select name,dept,subject,marks,
dense_rank() over (partition by dept, subject order by marks desc) as rankings
from result;