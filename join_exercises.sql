use employees;

#2
SELECT  dept_name, first_name, last_name from dept_manager
join departments using (dept_no)
join employees using (emp_no)
where to_date > now();
 
 
 
 #3
 SELECT  dept_name, first_name, last_name from dept_manager
join departments using (dept_no)
join employees using (emp_no)
where to_date > now()
and gender = 'F';
  
  #4
select title, count(title) from titles as t
join dept_emp de using (emp_no)
join departments d using (dept_no)
where t.to_date > curdate()
and de.to_date > curdate()
and d.dept_name = 'customer service'
group by title;


#5
select dept_name, first_name, last_name, salary from dept_manager dm
left join employees using (emp_no)
left join salaries s using (emp_no)
left join departments d using (dept_no)
where dm.to_date > now()
and s.to_date > now()
order by dept_name;







#6
select dept_name, dept_no, count(*) from dept_emp de
join departments d using (dept_no)
where de.to_date > now()
group by dept_name
order by dept_no;






#7
select dept_name, avg(salary)
from
salaries
join
dept_emp on salaries.emp_no = dept_emp.emp_no
join
departments on dept_emp.dept_no = departments.dept_no
where salaries.to_date > now()
and dept_emp.to_date > now()
group by dept_name
order by avg(salary) desc
limit 1;


#8
select first_name, last_name, salary from salaries
join dept_emp de using (emp_no)
join departments using (dept_no)
join employees e using (emp_no)
where de.to_date > now()
and dept_name = 'Marketing'
order by salary DESC;


#9
select first_name, last_name, salary from salaries
join dept_emp de using (emp_no)
join departments using (dept_no)
join employees e using (emp_no)
where de.to_date > now()
and dept_name = 'Marketing'
order by salary DESC;


#10
select dept_name, avg(s.salary) from salaries s
join dept_emp de using (emp_no)
join departments d using (dept_no)
group by dept_name
order by avg(s.salary) desc;










; 
  
 
 
 
 
 
 
 
 
  
  SELECT * FROM dept_manager
  
  SELECT title, dept_name as title, d.dept_name
  from employees as e	
  join 
WHERE dept_name 
IN (SELECT dept_name FROM departments WHERE dept_name = 'customer_service');





