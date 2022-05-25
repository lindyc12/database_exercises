 use employes;
 
 
 

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;
# irena reutenauer, vidya simmen

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC, emp_no DESC;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;
#irena acton, vidya zweizig


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC, last_name DESC;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;
#irena acton, maya zyda

SELECT * 
FROM employees
WHERE last_name LIKE 'e%e'
order by emp_no ASC;

SELECT * 
FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY hire_date DESC;

SELECT * 
FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY hire_date;





select * from employees 
where birth_date like '%-12-25'
 and hire_date between '1989-12-31' and '1999-12-31' 
 order by hire_date, birth_date
 desc limit 10; #alselm, utz, bouchung, baocai, petter
 
 SELECT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date DESC, hire_date ASC;



SELECT DISTINCT last_name
FROM employees
ORDER by last_name DESC
LIMIT 10;
