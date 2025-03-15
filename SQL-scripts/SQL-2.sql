---- One/Top 1 record from employee details

SELECT TOP 1 * FROM employees;

--- Employee First name is "vikash","Rahul" or "Shivam"
SELECT * from employee WHERE first_name IN ('vikash','Rahul','Shivam');

--- Employee First name is not "vikash","Rahul" or "Shivam"
SELECT * from employee WHERE first_name NOT IN ('vikash','Rahul','Shivam');

--- Display first name and Gender as M/F
SELECT first_name, CASE WHEN gender = 'Male' THEN 'M'
WHEN gender = 'Female' Then 'F' END AS gender from employees;


