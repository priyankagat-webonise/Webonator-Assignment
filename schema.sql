create table emp(id int NOT NULL UNIQUE,name varchar(30),age int,salary int);
create table dept(id int NOT NULL UNIQUE,name varchar(30),budget int,manager_id int);
create table works(emp_id int,dept_id int,pct_time int);

insert into emp(id,name,age,salary) values (1,'John',25,1000000);
insert into emp(id,name,age,salary) values (2,'Jason',47,6500000);
insert into emp(id,name,age,salary) values (3,'Larry',28,1200000);
insert into emp(id,name,age,salary) values (4,'Ram',42,3500000);
insert into emp(id,name,age,salary) values (5,'Sham',28,1500000);
insert into emp(id,name,age,salary) values (6,'Tom',26,1500000);
insert into emp(id,name,age,salary) values (7,'Ken',30,1200000);
insert into emp(id,name,age,salary) values (8,'Jerry',45,4500000);
insert into emp(id,name,age,salary) values (9,'Menon',32,1500000);
insert into emp(id,name,age,salary) values (10,'Sinha',30,1200000);

insert into emp(id,name,age,salary) values (11,'sneha',42,5000000);
insert into emp(id,name,age,salary) values (12,'Karan',40,3200000);
insert into emp(id,name,age,salary) values (13,'Karishma',38,3000000);
insert into emp(id,name,age,salary) values (14,'Koyal',35,1200000);
insert into emp(id,name,age,salary) values (15,'Ram',38,4200000);
insert into emp(id,name,age,salary) values (16,'Harry',36,3200000);
insert into emp(id,name,age,salary) values (17,'Hari',36,2400000);
insert into emp(id,name,age,salary) values (18,'Samir',37,2600000);
insert into emp(id,name,age,salary) values (19,'Jerry',39,2400000);
insert into emp(id,name,age,salary) values (20,'Ramesh',35,2100000);
insert into emp(id,name,age,salary) values (21,'David',30,2000000);


insert into dept(id,name,budget,manager_id) values (11,'software',3000000,2);
insert into dept(id,name,budget,manager_id) values (12,'software',5000000,4);
insert into dept(id,name,budget,manager_id) values (15,'hardware',10000000,2);
insert into dept(id,name,budget,manager_id) values (16,'hardware',7000000,4);
insert into dept(id,name,budget,manager_id) values (112,'software',4000000,8);

insert into works(emp_id,dept_id,pct_time) values (1,11,50);
insert into works(emp_id,dept_id,pct_time) values (1,15,50);
insert into works(emp_id,dept_id,pct_time) values (3,15,100);
insert into works(emp_id,dept_id,pct_time) values (2,11,50);
insert into works(emp_id,dept_id,pct_time) values (2,16,50);
insert into works(emp_id,dept_id,pct_time) values (4,16,50);
insert into works(emp_id,dept_id,pct_time) values (4,12,50);
insert into works(emp_id,dept_id,pct_time) values (5,11,50);
insert into works(emp_id,dept_id,pct_time) values (5,112,50);
insert into works(emp_id,dept_id,pct_time) values (6,11,100);
insert into works(emp_id,dept_id,pct_time) values (7,11,50);
insert into works(emp_id,dept_id,pct_time) values (7,112,50);
insert into works(emp_id,dept_id,pct_time) values (8,112,100);
insert into works(emp_id,dept_id,pct_time) values (9,16,100);
insert into works(emp_id,dept_id,pct_time) values (10,16,100);
insert into works(emp_id,dept_id,pct_time) values (11,112,100);
insert into works(emp_id,dept_id,pct_time) values (12,15,100);
insert into works(emp_id,dept_id,pct_time) values (13,15,100);
insert into works(emp_id,dept_id,pct_time) values (14,11,100);
insert into works(emp_id,dept_id,pct_time) values (15,11,100);
insert into works(emp_id,dept_id,pct_time) values (16,12,100);
insert into works(emp_id,dept_id,pct_time) values (17,12,100);
insert into works(emp_id,dept_id,pct_time) values (18,16,50);
insert into works(emp_id,dept_id,pct_time) values (18,12,50);
insert into works(emp_id,dept_id,pct_time) values (19,16,100);
insert into works(emp_id,dept_id,pct_time) values (20,16,100);
insert into works(emp_id,dept_id,pct_time) values (21,16,50);
insert into works(emp_id,dept_id,pct_time) values (21,12,50);

