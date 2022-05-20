use employees;


select distinct title
 from titles;#7

select distinct last_name 
from employees
where last_name 
like 'e%e'
group by last_name; #5


select distinct last_name, first_name
from employees
where last_name 
like 'e%e'
group by last_name, first_name; #846


select distinct last_name
from employees
where last_name like '%q%' 
and last_name not like '%qu%'
group by last_name; #chleq, lindqvist, qiwen


select first_name, gender, count(*)
from employees
where first_name in ('irena', 'vidya', 'maya')
group by first_name, gender;



SELECT CONCAT(SUBSTR(LOWER(first_name), 1, 1),
            (SUBSTR(LOWER(last_name), 1, 4)),
            '_',
            EXTRACT(MONTH FROM birth_date),
            SUBSTR(EXTRACT(YEAR FROM birth_date),3,2))
		AS username,
        count(*) as duplicates
FROm employees
group by username
having duplicates > 1; #13251 duplicates













