
----- Optimize slow running queries

---- Indexing and Query Struture 

--- Create Indexing ON TABLE employee column salary
CREATE INDEX idx_employee_salary ON employee(salary);


--- Index improves performance for WHERE, JOIN and ORDER By clause

--- SLOWER
SELECT * FROM employees;
-- FASTER
SELECT emp_name,emp_salary FROM employees;



--- Optimize JOIN with Indexes
SELECT e.name, d.department_name FROM employees e 
JOIN departments d ON e.department_id = d.id;

CREATE INDEX idx_emp_dept ON employees(department_id);
CREATE INDEX idx_dept_id ON departments(id);


--- Using LIMIT and OFFSET
SELECT * FROM employees ORDER BY emp_id LIMIT 10 OFFSET 1000;


--- Partitioning large data
CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_salary INT,
    emp_dept_id INT
) PARTITION BY RANGE(emp_salary)(
    PARTITION p0 VALUES LESS THAN (10000),
    PARTITION p1 VALUES LESS THAN (20000),
    PARTITION p2 VALUES LESS THAN (30000),
    PARTITION p3 VALUES LESS THAN (40000),
    PARTITION p4 VALUES LESS THAN (50000)
);
