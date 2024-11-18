use sql_intro;

select * from employees;

select Emp_name, Dept, Salary 
from employees where Salary > (select avg(Salary) from employees);

select Emp_name, Gender, Dept, Salary
from employees where Salary > (select Salary from employees where Emp_name = "Shane");

