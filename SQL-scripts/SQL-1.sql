--- Upper case to first name

SELECT UPPER(first_name) as first_name FROM employees;

--- Lower case to first name
SELECT LOWER(first_name) as first_name FROM employees;

--- Concatenate first name and last name
SELECT first_name+' '+last_name as full_name FROM employees; --- MS sql
SELECT CONCAT(first_name,' ',last_name) as full_name FROM employees; -- My SQL
SELECT first_name||' '||last_name as full_name FROM employees; -- Oracle

---- starts with
SELECT * FROM employees WHERE first_name LIKE 'A%';

--- starts with ansy a-p
SELECT * from employees WHERE first_name LIKE '[A-P]%';

---- Not starts with a-p
SELECT * from employees WHERE first_name NOT LIKE '[^A-P]%';

-- All employss whose gender ends with le and has 4 character
SELECT * from employees WHERE gender like '__le';

--- Get all unique department from employee table
SELECT DISTINCT(Department) FROM employees;

---- Find Max salary of employee
SELECT MAX(salary) as max_salary FROM employees;

-- Find Min salary of employee
SELECT MIN(salary) as min_salary FROM employees;

