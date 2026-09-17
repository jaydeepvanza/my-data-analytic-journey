
# my-data-analytic-journey

A learning project for data analytics where I explore tools, techniques, and datasets to build practical skills.

## Overview

This repository chronicles my journey through data analytics, including:
- data exploration and cleaning
- visualization and reporting
- analysis using Python and popular libraries
- documenting findings and lessons learned


## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/my-data-analytic-journey.git
   ```
2. Create a virtual environment:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Goals

- Learn core data analytics workflows
- Practice exploratory data analysis
- Build visualizations and reports
- Develop a portfolio of analytics projects
# to change directory or branch
- cd give path "we can use tab for autocomplete"
# file status in git
- untracked - new file than git doesn't track
- modified- change in file
- staged - file is ready to commit
- unmodified -unchanged
# add & commit & push
- git add . to add all files
- git add "filename" add only this file
- git commit -m"add any comment"
- git push origin main ( git push -u origin main "sfter this we only type git push this work on only selected repo) 
- see all file in folder ls -a
# create branch
- check branch - git branch
- rename -git branch -M main
- leave from branch - git checkout branch name
- create new branch - git checkout -b new branch name
- delete branch - git branch -d branch name
-----------------------------------------------------------------------------------------------
## SQL
## *Module 1: DDL (Data Definition Language)* ✅

- create database mydata;
- use mydata;
- show tables;
- drop table tbl_name;
- we can't drop any table if it connected with any table by foreigh key
- drop view view_name;
------------------------------
# CREATE TABLE
 ```sql
 create table student 
 student_id int primary key auto_increment,
 first_name varchar(20),
 last_name varchar(20),
 age int,
 gender  enum("male", "female", "other"), 
 --  we can also use "gender varchar(10) check( gender IN ("male", "female", "other")
 -- ENUM use where no need to change in future
 city varchar(100),
 admission_date date)
 ```
- SHOW FULL TABLES; -- print with type table or view
---------------------------
## *Module 2: DML (Data Manipulation Language)*
Purpose: Add, modify, and remove data.

Topics:

INSERT
UPDATE
DELETE

# INSERT VALUE
```sql insert into employee ( name,salary,department,joining_date,email)
 value(
 "jaydeep",50000,"engineering",'2026-07-01', 'jaydeep@gmail.com');
 -- by default date formate is yyy-mmm-ddd
```
- you insert data in same formate of table than don't need to specity column 
```sql
insert into employee 
value(
 2,"jaydeep",50100,"engineering",'2026-07-01', 'jaydeep1@gmail.com');
```
- delete perticular row
```sql
delete from employee
where empoloyee_id =2 ;
```
---------------------------------------------------------------------
- we can't update this if duplicate value is already available
```sql
alter table employee
modify	column email varchar(60) unique;
```
```sql
-- see idexis
SHOW INDEX FROM employee;
-- delete index
alter table employee
drop index email_2;
```

- If the column is already exist and you only want to change its size
```sql
alter table employee modify column email varchar(50); 
```
- rename, add , modify , drop column
```sql
alter table student rename column first_name to fname;
RENAME TABLE doctors TO doctor_details;
alter table employee add column email varchar(60);
ALTER TABLE doctors MODIFY Salary DECIMAL(12,2);
ALTER TABLE doctors DROP COLUMN Doctor_salary;
```
- TRUNCATE clear data only keep formate of table
```sql 
TRUNCATE TABLE doctors; 
``` 
- Constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, DEFAULT)
-ALTER TABLE employee MODIFY COLUMN Salary DECIMAL(10,2) AFTER Doctor_name; (BEFORE is not supported in    mysql)
- **when we  use primary key unique constraint it create an index**
- we want to remove this use "show index from tablename" to see all index
- than use 
```sql
alter table tablename drop index indexname
-- index name is also column name by default
```
# add foreign key after table creation 
```sql
ALTER TABLE appointments
ADD CONSTRAINT fk_appointments_doctor 
-- ("fk_appointments_doctor is constraint name you choose your self")
FOREIGN KEY (Doctor_id)
REFERENCES doctor(Doctor_id);
```
# cascading behavior
- delete all appointments automatically when a doctor is deleted 
```sql
ALTER TABLE appointments
ADD CONSTRAINT fk_appointments_doctor
FOREIGN KEY (Doctor_id)
REFERENCES doctor(Doctor_id)
ON DELETE CASCADE;
```
- set the Doctor_id to NULL when a doctor is deleted
```sql
ALTER TABLE appointments
ADD CONSTRAINT fk_appointments_doctor
FOREIGN KEY (Doctor_id)
REFERENCES doctor(Doctor_id)
ON DELETE SET NULL;
```
## *Module 3: DQL (Data Query Language)*
Purpose: Retrieve data.

```
SELECT
DISTINCT
WHERE
AND
OR
NOT
IN
BETWEEN
LIKE
IS NULL
LIMIT
ORDER BY
```
## if date is srt formate than convert it into date formate afer date related function run
```sql
SELECT
    DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_day,
    COUNT(DISTINCT order_id) AS total_order
FROM pizza_sales
GROUP BY order_day
ORDER BY total_order DESC;

```
## *Module 4: SQL Functions*
Aggregate Functions

COUNT()
SUM()
AVG()
MIN()
MAX()

String Functions

UPPER()
LOWER()
LENGTH()
CONCAT()
SUBSTRING()
TRIM()

Numeric Functions

ROUND()
CEIL()
FLOOR()
MOD()

Date Functions

CURDATE()
NOW()
DATEDIFF()
DATE_ADD()
DATE_SUB()

Summarize data.
GROUP BY
HAVING

## *Module 6: Joins ⭐ (Very Important)*
- *INNER JOIN*
```sql 
FROM A
LEFT JOIN B
ON A.id = B.i
```
- keep only matching from both table
*LEFT JOIN*
```sql SELECT *
FROM A
LEFT JOIN B
ON A.id = B.id
```
- keep all record from table A + matching from table B

*RIGHT JOIN*
```sql
SELECT *
FROM A
RIGHT JOIN B
ON A.id = B.id;
```
- keep all record from table B + matching from table A
*FULL JOIN*
## we use this in mysql & MarianaBD

```sql SELECT *
FROM A
LEFT JOIN B
ON A.id = B.id

UNION
-- union show only unique record
-- UNION ALL show all record with duplicate

SELECT *
FROM A
RIGHT JOIN B
ON A.id = B.id;
```

```sql
SELECT *
FROM A
FULL OUTER JOIN B
ON A.id = B.id;
```
| `Database`     | `FULL OUTER JOIN`  |
| -------------- | -------------------|
| **PostgreSQL** | ✅ Yes             |
| **SQL Server** | ✅ Yes             |
| **Oracle**     | ✅ Yes             |
| **IBM Db2**    | ✅ Yes             |
| **MySQL**      | ❌ No              |
| **MariaDB**    | ❌ No              |

# corss join 
- give every possible combination of both table
<p> table A have colors (red, blue) and table B have size ( s.m.l) </p>

```sql
SELECT *
FROM A
RIGHT JOIN B;
```
- result is 
- red s , red m, red l , blue s , blue m, blue l 
# self join
| `id`     | `emp name`  | `manager_id` |
|----------|-------------|--------------|
| 1        | jay         | 1            |
| 2        | deep        | 3            |
| 3        | vanza       | 1            |

```sql
SELECT id , a.name as employe_name,
m.name as manager_name 
FROM emp a
join emp m
on a.manager_id = m.id
```
- result 
| `id`     | `employe_name`  | `manager_name` |
|----------|-----------------|----------------|
| 1        | jay             | jay            |
| 2        | deep            | vanza          |
| 3        | vanza           | jay            |


## *Module 7: Subqueries*
Purpose: Write queries inside queries.
- subquery
```sql
SELECT * FROM emp WHERE salary <(
SELECT MAX(salary) FROM emp);
```
- nested subquery
```sql
SELECT * FROM emp WHERE salary <(
SELECT MAX(salary) FROM emp WHERE salary < (SELECT MAX(salary) FROM emp) );
```
- Correlated subquery
```sql
SELECT
    e.name,
    e.salary,
    e.department_id
FROM emp e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM emp e2
    WHERE e2.department_id = e.department_id
-- where is group by the data department wise    
);
```
## *Module 8: Views*

Purpose: Save complex queries.

- A view is a saved SQL query that behaves like a virtual table.
```sql
CREATE VIEW high_salary_employee AS
SELECT
    id,
    name,
    salary
FROM emp
WHERE salary > 50000;
```
```sql
SELECT *
FROM high_salary_employee;
```
- alter view
```sql
ALTER VIEW high_salary_employee AS
SELECT
    id,
    name,
    salary
FROM emp
WHERE salary > 70000;
```
- deop view 
```sql
DROP VIEW high_salary_employee ;
```
## *Module 9: TCL Transaction Control Language*
- `COMMIT` → permanently saves the transaction changes.
- `ROLLBACK` → cancels transaction changes since the transaction started or since the last savepoint.
- `SAVEPOINT` → creates a checkpoint inside a transaction.

# MYSQL
```sql
DELIMITER $$

CREATE PROCEDURE update_salary(ID int)
BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    UPDATE emp
    SET salary = salary + 5000
    WHERE id = ID;

    COMMIT;

END $$

DELIMITER ;
CALL update_salary(10)
```

# SQLSERVER

```sql
BEGIN TRY

    BEGIN TRANSACTION;

    UPDATE emp
    SET salary = salary + 5000
    WHERE id = 5;

    COMMIT TRANSACTION;

END TRY

BEGIN CATCH

    ROLLBACK TRANSACTION;

END CATCH;
```
## *Module 10: DCL (Data Control Language)*
- *GRANT*
```sql
GRANT SELECT, INSERT ON database_name.* TO 'user1'@'localhost';
```
- *REVOKE*
```sql
REVOKE INSERT ON database_name.* FROM 'user1'@'localhost';
```
## *Module 11: Stored Programs (Advanced)*

- *Stored Procedures*
```sql
DELIMITER $$

CREATE PROCEDURE procedure_nmame()
BEGIN

-- query ;

END $$
 call procedure_nmame()
```

- *Functions*
```sql
DELIMITER $$

DROP FUNCTION IF EXISTS total $$

CREATE FUNCTION total(
    qty INT,
    price DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
RETURN price * qty $$

DELIMITER ;

SELECT
    pre_id,
    qty,
    medicine_price,
    total_amount,
    total(qty, medicine_price) AS total_Amt
FROM bills;
```
- Procedure → performs an operation
- Function → calculates/returns a value
- *Triggers*
- 6 type of trigers is use in sql 
- Before and afert insert 
- before and after delete
- before and after update

```sql
DELIMITER $$ 
CREATE TRIGGER before_delete
BEFORE DELETE ON bill
FOR EACH ROW
BEGIN
INSERT INTO delete_hisotry ( bill_no,qty,medicine_price)
VALUES (OLD.bill_no,OLD.qty,OLD.medicine_price);
END $$
DELIMITER ;
```
------------------------------
```SQL
DELIMITER $$

CREATE TRIGGER after_insert_bill
AFTER INSERT ON bills
FOR EACH ROW
BEGIN
    UPDATE medicines m
    JOIN prescriptions p
        ON m.medicine_id = p.medicine_id
    SET m.available_qty = m.available_qty - NEW.qty
    WHERE p.pre_id = NEW.pre_id;
END $$

DELIMITER ;
```
- *Events*
- Event → runs automatically based on time/schedule
```sql
SET GLOBAL event_scheduler = ON;
-- CHECK IT 
SHOW VARIABLES LIKE 'event_scheduler';
```
```SQL

DELIMITER $$

CREATE EVENT delete_expired_medicines
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    DELETE FROM medicines
    WHERE expiry_date < CURDATE();
END $$

DELIMITER ;
```

```SQL

DELIMITER $$

CREATE EVENT move_expired_medicines
ON SCHEDULE EVERY 1 DAY
DO
BEGIN

    INSERT INTO expired_medicines
        (medicine_id, medicine_name, medicine_price,
         available_qty, medicine_type, expiry_date, deleted_at)
    SELECT
        medicine_id,
        medicine_name,
        medicine_price,
        available_qty,
        medicine_type,
        expiry_date,
        NOW() -- store datetime when it deleted
    FROM medicines
    WHERE expiry_date < CURDATE();

    DELETE FROM medicines
    WHERE expiry_date < CURDATE();

END $$

DELIMITER ;
```
- INSERT INTO tbl (,,,) VALUES (,,,) when you insert values directly 
- INSERT INTO tbl (,,,) SELECT ,,, FROM tbl2 WHERE CONDITION - no need to write value if you data data from another table

## *Module 12: Advanced SQL*

Common Table Expressions (CTEs)
```sql
WITH cte_name AS (
-- QUERY 
)

SELECT * FROM cte_name
```
- *Recursive CTEs*
- A normal CTE runs once; a recursive CTE repeatedly executes its recursive part until the stopping condition is reached.
```sql
WITH RECURSIVE employee_hierarchy AS (

    -- Starting employee
    SELECT
        id,
        name,
        manager_id,
        0 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Find employees under each manager
    SELECT
        e.id,
        e.name,
        e.manager_id,
        eh.level + 1 AS level
    FROM employees e
    JOIN employee_hierarchy eh
        ON e.manager_id = eh.id
)

SELECT *
FROM employee_hierarchy
ORDER BY level, id;
```

## SQL Window Functions
- *ROW_NUMBER() OVER( partition by order by asc or desc)*
- give numbering to each row as par condition if we use partition than give numbering as per grouping
- *RANK() OVER( partition by order by asc or desc)*
- also use to give ranking but it skip numbers if two or more value are same exe. 1,2,2,4,5,5,7
- *DENSE_RANK()*
- also use to give ranking without skip numbers if two or more value are same exe. 1,2,2,3,4,4,5
```sql
SELECT
    name,
    salary,
    DENSE_RANK() OVER (PARTITION BY  department ORDER BY salary DESC) AS salary_rank
FROM emp;
```
- give ranking to salary based on salary from highest to lowest.

- *NTILE() — divides rows into a specified number of groups.*
```sql
SELECT
    name,
    salary,
    NTILE(4) OVER (ORDER BY salary DESC) AS salary_group
FROM emp;
```
- NTILE(4) divides the employees into 4 groups based on salary from highest to lowest.


- *LAG(salary) — gets a value from a previous row.*
- *LEAD(salary) — gets a value from a following row.*
```sql
SELECT
    name,
    salary,
    LAG(salary) OVER (ORDER BY salary DESC) AS salary_previous
FROM emp;
```
- add column with salary of pervious row

- *FIRST_VALUE() — returns the first value in the window.*
```sql
SELECT
    name,
    salary,
    FIRST_VALUE(salary) OVER (
        ORDER BY salary DESC
    ) AS highest_salary
FROM emp;
```
- *LAST_VALUE() — returns the last value in the window.*
```sql
SELECT
    name,
    salary,
    LAST_VALUE(salary) OVER (
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS lowest_salary
FROM emp;
```
----------------------------------------------
1. UNBOUNDED PRECEDING
- Starts from the first row.

```SQL
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
```
- First row → current row
2. UNBOUNDED FOLLOWING
- Ends at the last row.
```SQL
Ends at the last row.
```
-- Current row → last row
3. Previous rows → current row
```SQL
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
```
```
2 rows before
1 row before
CURRENT ROW
```
4. Current row → next rows
```SQL
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
```
5. Previous rows → next rows
```SQL
ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING
```
```
2 before
1 before
CURRENT
1 after
2 after
```
--------------------------------------------------
- *NTH_VALUE() — returns the Nth value in the window.*
```sql
SELECT
    name,
    salary,
    NTH_VALUE(salary, 3) OVER (
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS third_highest_salary
FROM emp;
```
- CUME_DIST() — calculates cumulative distribution of a row.
```sql
SELECT
    name,
    salary,
    CUME_DIST() OVER (
        ORDER BY salary
    ) AS cumulative_distribution
FROM emp;
```
-  It returns a value between 0 and 1 representing the cumulative distribution of each row
- formula work behind it is 
```
CUME_DIST = number of rows up to and including current row
            -------------------------------------------
                         total row
```

- SUM() OVER() — calculates a sum across a window of rows.
```sql
SELECT
    name,
    salary,
    AVG(salary) OVER () AS avg_salary
FROM emp;

-- for running total 
SELECT
    name,
    salary,
    SUM(salary) OVER (ORDER BY salary) AS avg_salary
FROM emp;
```
- *AVG() OVER() — calculates an average across a window of rows.*
```sql
SELECT
    name,
    salary,
    AVG(salary) OVER () AS avg_salary
FROM emp;
```
- *COUNT() OVER() — counts rows across a window.*
```sql
SELECT
    name,
    salary,
    COUNT(id) OVER () AS total_count
FROM emp;
```
- *MIN() OVER() — finds the minimum value across a window.*
- *MAX() OVER() — finds the maximum value across a window.*
```sql
SELECT
    name,
    salary,
    MIN(salary) OVER () AS minimum_salary
FROM emp;
```

# COALESCE
```SQL
SELECT username , COALESCE(SUM(amount),0) AS total_order_amount
FROM users
```
-- use to replace null value with another value 

- *CASE WHEN*
```SQL
SELECT
    employee_name,
    department,
    salary,
    CASE
        WHEN department = 'IT' AND salary >= 60000 THEN 'IT Senior'
        WHEN department = 'IT' THEN 'IT Junior'
        WHEN department = 'HR' AND salary >= 50000 THEN 'HR Senior'
        WHEN department = 'HR' THEN 'HR Junior'
        ELSE 'Other'
    END AS category
FROM employee;
```