---- Find Top 5 highest Paid employees from employees table ----

--- Using Limit 
SELECT * from employees ORDER BY salary DESC LIMIT 5;

--- Using Top
SELECT TOP 5 * from employees ORDER BY slaary DESC;

--- Using Rank 
SELECT * FROM (
    SELECT * , RANK() OVER (ORDER By salary DESC) as rnk 
    from employees
) ranked
WHERE rnk <= 5;

--- Using Dense Rank
SELECT * FROM (
    select *, DENSE_RANK() OVER (ORDER BY salary DESC) as rnk 
    FROM employees
) ranked
WHERE rnk <= 5;


-------------Retrive all last 30 days --------------

---- Using Current Date and Interval
Select * from employees where 
joining_date >= CURDATE() - INTERVAL 30 DAY;


---- Using Datedd
SELECT * FROM employees 
WHERE joining_date >= DATEDD(DAY, -30, GETDATE());

---- Using SYSDATE
SELECT * from employees 
WHERE joining_date >= SYSDATE - 30;


------------- Update of employees salary by 10% --------------

---- Using Set
UPDATE employees SET salary = salary * 1.1;

--- Upadte salary based on condition
UPDATE employees SET salary = salary * 1.1 WHERE department_id = 10;


---------- Delete Duplicate rows from a table based on specific condition ----

---- Using Join 
DELETE e1 FROM employees e1 JOIN 
employees e2 ON e1.email = e2.email
WHERE e1.id>e2.id;


---- Delete with rowid
DELETE FROM employees WHERE ROWID NOT IN (
    SELECT MIN(ROWID) FROM employees GROUP BY email
)


----- Find Employees who have not been assigned to any departments -----

SELECT * FROM employees 
WHERE department_id IS NULL;


SELECT e.* FROM employees e LEFT JOIN
departments d ON e.department_id = d.id
WHERE d.id IS NULL;