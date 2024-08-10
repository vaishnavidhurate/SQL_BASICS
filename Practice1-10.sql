CREATE database employee;
USE employee;
CREATE table info(employeid int,firstnm varchar(50),salary int,department varchar(50));
INSERT INTO info(employeid,firstnm,salary,department)VALUES(1,"vikas",300,"IT")
,(2,"sudeep",400,"HR"),(3,"varsha",400,"HR"),(4,"angha",500,"payrole"),(5,"anish",500,"payrole");
SELECT *FROM info;
SELECT firstnm FROM info;
SELECT UPPER (firstnm)AS UppercasefirstNm FROM info;
SELECT LOWER (firstnm)AS LOWERcasefirstNm FROM info;
SELECT CONCAT( firstnm,' ',department)AS Name FROM info;
SELECT * FROM info WHERE firstnm="angha"; 
SELECT * FROM info WHERE firstnm like 's%';
SELECT 
