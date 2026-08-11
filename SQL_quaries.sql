-- Create a new database named 'foodie_app' 
CREATE DATABASE foodie_app;
SHOW DATABASES ;
USE foodie_app;

select * from users limit 5;
alter table users drop column created_at;
-- second highest salary without limit
select username, salary from users where salary =(select max(salary) from users where salary < (select max(salary)from users) );
-- find department having highest average salary 
SELECT department,
       AVG(salary) AS average_salary
FROM employee
GROUP BY department
HAVING AVG(salary) = (
    SELECT MAX(avg_salary)
    FROM (
        SELECT AVG(salary) AS avg_salary
        FROM employee
        GROUP BY department
    ) AS dept_avg
);

--- **using join highest pain employee in each dept ** -- join quaries
SELECT e.employee_name,
       e.department,
       e.salary
FROM employee e
JOIN (
    SELECT department,
           MAX(salary) AS max_salary
    FROM employee
    GROUP BY department
) m
ON e.department = m.department
AND e.salary = m.max_salary;
-- third highest salary with name 
select employee_name , salary from employee where salary = 
(select max(salary) from employee where salary < (select max(salary) from employee where salary < (select max(salary) from employee where salary)));

-- case when 
SELECT employee_name,
       salary,
       CASE
           WHEN salary >= 80000 THEN 'High'
           WHEN salary >= 60000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_grade
FROM employee;
---- 
UPDATE employee
SET salary =
    CASE
        WHEN department = 'IT' THEN salary * 1.20
        WHEN department = 'HR' THEN salary * 1.10
        WHEN department = 'Sales' THEN salary * 1.05
        ELSE salary
    END;
    
    
    1. What is a Window Function        ← YOU ARE HERE
       ↓
2. OVER()
       ↓
3. ORDER BY
       ↓
4. PARTITION BY
       ↓
5. ROW_NUMBER()
       ↓
6. RANK()
       ↓
7. DENSE_RANK()
       ↓
8. Difference: ROW_NUMBER vs RANK vs DENSE_RANK
       ↓
9. 2nd / 3rd highest salary
       ↓
10. Top N employees per department
       ↓
11. Running totals
       ↓
12. LAG() / LEAD()

----------------------------
WITH salary_diff AS (
    SELECT
        employee_name,
        department,
        salary,
        LAG(salary) OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS previous_salary
    FROM employee
)
SELECT
    employee_name,
    department,
    salary,
    previous_salary,
    salary - previous_salary AS salary_difference
FROM salary_diff;

----------------
-- show first salary of each dept    
SELECT
    employee_name,
    department,
    salary,
    FIRST_VALUE(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS highest_salary
FROM employee;
-- use LAST_VALUE(salary) to see lowest salary
SELECT
    employee_name,
    department,
    salary,
    LAST_VALUE(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING -- Consider the entire department window, from the first row to the last row.
    ) AS lowest_salary
FROM employee;

-- for running total ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
-- group salary in required number 2,3,4, 5 group of salary use partition if you want else not
SELECT
    employee_name,
    department,
    salary,
    NTILE(2) OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_group
FROM employee;	


/*
YEAR()
MONTH()
DAY()
MONTHNAME()
DAYNAME()
WEEK()
QUARTER()
DATEDIFF()
TIMESTAMPDIFF()
DATE_ADD()
DATE_SUB()
LAST_DAY()*/
/*
CONCAT()
CONCAT_WS()
UPPER()
LOWER()
LENGTH()
TRIM()
LTRIM()
RTRIM()
SUBSTRING()
LEFT()
RIGHT()
REPLACE()
LOCATE()*/