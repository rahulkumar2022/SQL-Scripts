---- Using Group BY

-- Salary sum grouped by department
SELECT department, SUM(salary) as total_salary FROM
employees GROUP BY department;

---- get the department and Sum(salary) in ascending order
SELECT department, SUM(salary) AS total_salary FROM employees 
GROUP BY department ORDER BY SUM(salary) ASC;