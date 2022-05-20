use employees;
select first_name from employees where first_name in ('irena', 'vidya', 'maya') order by first_name; #irena, vidya 
select first_name, last_name from employees where first_name in ('irena', 'vidya', 'maya') order by first_name asc, last_name asc; #irena acton and vidya zweizig
select first_name, last_name from employees where first_name in ('irena', 'vidya', 'maya') order by last_name asc, first_name asc; #irena acton and maya zyda
select last_name, emp_no from employees where last_name like 'e%' and last_name like '%e' order by emp_no asc; #899 employees, newest erde and oldest erde
select last_name, hire_date from employees where last_name like 'e%e' order by hire_date asc; #899 oldest erde newst eldridge
select first_name, birth_date, hire_date from employees where birth_date like '%-12-25' and hire_date between '1989-12-31' and '1999-12-31' order by hire_date, birth_date desc; #362 employees, douadi, khun