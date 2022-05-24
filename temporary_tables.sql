use kalpana_1818;

CREATE TEMPORARY TABLE employees_with_departments(
first_name varchar(10) not null,
last_name varchar(10) not null, 
dept_name varchar(10) not null);


select * from employees_with_departments;

ALTER TABLE employees_with_departments ADD full_name VARCHAR(20);

use employees;

select emp_no,dept_no, emp_no, dept_no, dept_name, concat(first_name, ' ', last_name) as full_name 
from employees 
join dept_emp using (emp_no)
join departments using (dept_no);

drop table if exists employees_with_departments;



create temporary table kalpana_1818.employees_with_departments
as (select emp_no, dept_no, dept_name, concat(first_name, ' ', last_name) as full_name 
from employees 
join dept_emp using (emp_no)
join departments using (dept_no));


select * from employees_with_departments;

alter table employees_with_departments
add first_name varchar(10);

alter table employees_with_departments
add last_name varchar(10);

#2 
use sakila;

select * from payment;


#3 

SELECT AVG(salary) FROM salaries; #63810.7448

select stddev(salary) from salaries; #16904.828

SELECT salary,
    (salary - (SELECT AVG(salary) FROM salaries))
    /
    (SELECT stddev(salary) FROM salaries) AS zscore
FROM salaries;

SELECT dept_no, SUM(salary)
FROM employees 
GROUP BY dept_no;

CREATE temporary TABLE kalpana_1818.department(
    SALARY int,
    DEPT_name Varchar(255));


select * from department;


create temporary table kalpana_1818.departments as 
select departments.dept_name,
 avg(sal.salary) as avg_salary
 from salaries as sal
 join dept_emp as demp on sal.emp_no = demp.emp_no
 join departments on demp.dept_no = departments.dept_no
 where sal.to_date > now()
 and demp.to_date > now()
group by departments.dept_name
order by avg_salary desc;

select * from kalpana_1818.departments;


select *,
(salary - (select avg(salary) from salaries))
/
(select stddev(salary) from salaries where to_date > now()) as zscore 
from kalpana_1818.departments;
 
 
 



