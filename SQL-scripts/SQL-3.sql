---- Using Group BY

-- Salary sum grouped by department
SELECT department, SUM(salary) as total_salary FROM
employees GROUP BY department;

---- get the department and Sum(salary) in ascending order
SELECT department, SUM(salary) AS total_salary FROM employees 
GROUP BY department ORDER BY SUM(salary) ASC;

--- Get department wise average salary from each departments
SELECT department, AVG(salary) as avg_salary from employees
GROUP BY department ORDER BY AVG(salary) DESC;

--- Write down the query to fetch Project name assign to more than one Employee
SELRCT project_name, COUNT(*) as no_of_employees FROM employees
GROUP BY project_name HAVING COUNT(*) > 2;