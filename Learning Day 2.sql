show databases;
use sql_intro;

create table emp_details (Name varchar(25), Age int, Gender char(1), DateJoin date, City varchar(15), Dept varchar(15), Salary float);

describe emp_details;

insert into emp_details
values ("Jimmy", 35, "M", "2005-05-30", "Chicago", "IT", 70000),
("Shane", "30", "M", "1999-06-25", "Seattle", "Sales", 55000),
("Marry", "28", "F", "2009-03-10", "Boston", "Healthcare", 62000),
("Dwayne", "37", "M", "2011-07-12", "Austin", "IT", 57000),
("Sara", "32", "F", "2017-10-27", "New York", "Sales", 72000),
("Ammy", "35", "F", "2014-12-20", "Seattle", "Finance", 80000);

create table employees (Emp_Id int primary key, Emp_name varchar(25), Age int, Gender char(1), DateJoin date, Dept varchar(20), City varchar(25), Salary float);
describe employees;

insert into employees values
(110, "Jimmy", 35, "M", "2005-05-30", "Sales", "Chicago", 70000),
(111, "Shane", "30", "M", "1999-06-25", "Health", "Seattle", 55000),
(112, "Marry", "28", "F", "2009-03-10", "IT", "Boston", 62000),
(113, "Dwayne", "37", "M", "2011-07-12", "Finance", "Austin", 57000),
(114, "Sara", "32", "F", "2017-10-27", "IT", "New York", 72000),
(115, "Ammy", "35", "F", "2014-12-20", "Sales", "Seattle", 80000);

select * from employees;
select distinct City from employees;
select distinct Dept from employees;
select avg(Age) from employees;

select Dept, avg(Age) as Average_Age from employees group by Dept;
select Dept, sum(Salary) as Total_Salary from employees group by Dept;

select * from employees;
select count(Emp_Id), City from employees group by City order by count(Emp_Id) desc;

select year(DateJoin) as Year, count(Emp_Id) from employees group by year(DateJoin);

create table Sales (product_id int, sell_price float, quantity int, state varchar(20));

insert into Sales values
(121, 320.0, 3, "Cali"),
(122, 320.0, 6, "Texas"),
(123, 290.0, 4, "Austin"),
(124, 287.5, 3, "Alaska"),
(121, 290.0, 3, "Washington"),
(123, 320.0, 8, "Ohio");

select * from Sales;
select product_id, sum(sell_price * quantity) as revenue from Sales group by product_id;

create table c_product (product_id int, cost_price float);
insert into c_product values
(121, 270.0),
(122, 234.5),
(123, 560.0),
(124, 300.0);

select c.product_id, sum((s.sell_price - c.cost_price) * s.quantity) as profit 
from Sales as s inner join c_product as c 
where s.product_id = c.product_id group by c.product_id;

#More than 2 employees
select count(Emp_Id), City from employees group by City having count(Emp_Id)>2;

select * from employees;
select Dept, avg(Salary) as Avg_Salary from employees group by Dept having avg(Salary)>75000;
select City, sum(Salary) as Total from employees group by City having sum(Salary)>200000;

