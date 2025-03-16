------- Employee name, Project name order by first name from employee details and project details
SELECT e.first_name, p.project_name FROM employees e INNER JOIN
projects p ON e.employee_id = p.employee_id ORDER BY e.first_name;






