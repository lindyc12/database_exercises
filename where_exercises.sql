use employees;
select first_name from employees where first_name in ('irena', 'vidya', 'maya'); #709
select first_name from employees where first_name or ('irena', 'vidya', 'maya');

select count(last_name) from employees where last_name like 'e%'; #7330
select count(last_name) from employees where last_name like '%e' or 'e%'; #24292
select count(last_name) from employees where last_name like '%e' and 'e%'; #0
select count(first_name) from employees where hire_date between '1989-12-31' and '1999-12-31'; #135295
select count(first_name) from employees where birth_date like '%-12-25;'; #0
select count(first_name) from employees where hire_date between '1989-12-31' and '1999-12-31' and birth_date like '%-12-25'; #362
select count(last_name) from employees where last_name like '%q%'; #1873
select count(last_name) from employees where last_name like '%q%' and last_name not like '%qu%'; #547