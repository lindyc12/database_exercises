use employees;

#1

select 
first_name, last_name, dept_no, to_date, hire_date,
	if(to_date > now(), true, false) as is_current_employees
    from employees
    join dept_emp using(emp_no)
    join departments using(dept_no)
;


#2

select
first_name, last_name,
left(last_name, 1) as first_letter_of_last_name,
case 
when left(last_name, 1) <= 'H' then 'A-H'
when left(last_name, 1) <= 'q' then 'I-Q'
when left(last_name, 1) <= 'z' then 'R-Z'

end as name_group
from employees
;



#3 
select
	case 
when birth_date like '195%' then "1950's"
when birth_date like '196%' then  "1960's"
when birth_date like '197%' then "1970's"
   end as "Decade",
   count(*)
   from employees
   group by decade;

select birth_date
from employees;


#4


select 
case
when d.dept_name in ('research', 'development') then 'r&d'
when d.dept_name in ('sales', 'marketing') then 'sales & marketing'
when d.dept_name in ('production', 'quality management') then 'prod & qm'
when d.dept_name in ('finance', 'human resources') then 'finance & hr'
when d.dept_name in ("customer service") then "customer services"
else d.dept_name 
end as dept_group, avg(salary)
from departments d
join dept_emp de using (dept_no)
join salaries s using (emp_no)
where s.to_date > now() and de.to_date > now();


