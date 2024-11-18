show databases;
use mysql;
show tables;
select * from general_log;
describe general_log;

create database sql_intro;
show databases;
create table emp_details (Name varchar(25), Age int, Gender char(1), DateJoin date, City varchar(15), Salary float);

describe emp_details;

insert into emp_details
values ("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("Shane", "30", "M", "1999-06-25", "Seattle", 55000),
("Marry", "28", "F", "2009-03-10", "Boston", 62000),
("Dwayne", "37", "M", "2011-07-12", "Austin", 57000),
("Sara", "32", "F", "2017-10-27", "New York", 72000),
("Ammy", "35", "F", "2014-12-20", "Seattle", 80000);

select * from emp_details;
select distinct City from emp_details;

select count(name) as count_name from emp_details;
select sum(Salary) from emp_details;
select avg(Salary) from emp_details;

select Name, Age, City from emp_details;
select * from emp_details where Age>30;
select * from emp_details where Gender='F';

select * from emp_details where City = 'Chicago' or City = 'Austin';
select * from emp_details where City in ('Chicago', 'Austin');

select * from emp_details where DateJoin between '2000-01-01' and '2010-12-31';

select Gender, sum(Salary) as Total_Salary from emp_details group by Gender;
select * from emp_details order by Salary desc;

select length('India') as Total_Length;
select now();

#String Functions
select upper('India');
select character_length('India');
select Name, char_length('Name') as Total_Length from emp_details;

select * from emp_details;
select Name, concat(Name, " ", Age) as Name_Age from emp_details;

select * from emp_details;