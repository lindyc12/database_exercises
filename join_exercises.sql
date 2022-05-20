use employees;

SELECT  CONCAT(e.first_name, ' ', e.last_name) AS dept_manager, d.dept_name
FROM employees AS e
left JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no;
  





