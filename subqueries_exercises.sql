use employees;

#1

select hire_date from employees where emp_no = 101010;

select emp_no, first_name, Last_name, hire_date from employees
join dept_emp de using (emp_no)
where de.to_date > now() and hire_date = (select hire_date from employees where emp_no = 101010);
#10/1990

# 2
select * from titles
where emp_no in (select emp_no 
from employees
join dept_emp using (emp_no)
where to_date > now() 
and first_name = 'aamod');



#3
select count(*) from employees
where emp_no not in (select emp_no from dept_emp
where to_date > now());
#59900


#4 
select emp_no from dept_manager
where to_date > now();

SELECT  first_name, last_name from employees
where emp_no in (select emp_no from dept_manager
where to_date > now())
and gender = 'F'; #isamu, karsten, leon, hilary



#5
select avg(salary) from salaries;


select first_name, last_name, salaries.salary
from employees
join salaries on salaries.emp_no = employees.emp_no
where (select avg(salary) from salaries)
< salaries.salary
and to_date > now();

#6

select count(*) from salaries 
where to_date > now()
and salary > (select max(salary) from salaries where to_date > now()) - 
(select stddev(salary) from salaries where to_date> now());
#83

select count(*) from salaries
where to_date > now();


select (select max(salary) from salaries where to_date > now()) /
 (select stddev(salary) from salaries where to_date> now())
 * 100 as 'percent_of_salaries'; #914



select (select count(*) from salaries 
where to_date > now()
and salary > (select max(salary) from salaries where to_date > now()) - 
(select stddev(salary) from salaries where to_date> now()))
/ (select count(*) from salaries
where to_date > now());



#bonus

select max(salary) from salaries;

select first_name, last_name, salaries.salary
from employees
right join salaries using (emp_no)
where (select max(salary) from salaries)
order by salary asc
limit 1;












