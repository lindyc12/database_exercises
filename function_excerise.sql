use employees;
select concat(first_name, ' ', last_name) full_name from employees;
select upper(concat(first_name, ' ', last_name))  as full_name from employees;
select * from employees where birth_date like '%-12-25' and hire_date between '1989-12-31' and '1999-12-31';
select max(salary) as largest_price from salaries; #158220
select concat(substr(lower(first_name), 1,1), (substr(lower(last_name),1,4)), '_', extract(month from birth_date), substr(extract(year from birth_date), 3,2)) as username from employees;

