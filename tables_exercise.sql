show Databases; 
use employees;
show Tables; 
#Which table(s) do you think contain a numeric type column? Salaries, department, dept_emp,
#Which table(s) do you think contain a string type column? Titles, departments, dept_manager, dept_emp
#Which table(s) do you think contain a date type column? dept_emp, dept_mangaer, employees, salaries
select * from dept_manager; 
#31 dept_mangers
describe dept_manager;
show create table dept_manager;
CREATE TABLE `dept_manager` (
  `emp_no` int NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=latin1
use fruits_db;