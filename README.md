
# my-data-analytic-journey

A learning project for data analytics where I explore tools, techniques, and datasets to build practical skills.

## Overview

This repository chronicles my journey through data analytics, including:
- data exploration and cleaning
- visualization and reporting
- analysis using Python and popular libraries
- documenting findings and lessons learned

## Contents

- `README.md` - project overview and notes
- `notebooks/` - data analysis notebooks
- `data/` - sample datasets
- `scripts/` - reusable analysis or preprocessing scripts

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
- automation program is now working
-----------------------------------------------------------------------------------------------
## SQL
- create database mydata;
- use mydata;
-- show tables;
-- drop table emp_new;
--* we can't drop any table if it connected with any table by foreigh key
-- drop view employees_with_same_manager;
------------------------------
# CREATE TABLE
 <p>create table student (
 student_id int primary key auto_increment,
 first_name varchar(20),
 last_name varchar(20),
 age int,
 gender  enum("male", "female", "other"), * we can also use "gender varchar(10) check( gender IN ("male", "female", "other")- ENUM use where no need to change in future
 city varchar(100),
 admission_date date)
- SHOW FULL TABLES; -- print with type table or view
---------------------------
# INSERT VALUE
 - insert into employee ( name,salary,department,joining_date,email)
 value(
 "jaydeep",50000,"engineering",'2026-07-01', 'jaydeep@gmail.com');-- by default date formate is yyy-mmm-ddd
- you insert data in same formate of table than don't need to specity column 
insert into employee 
value(
 2,"jaydeep",50100,"engineering",'2026-07-01', 'jaydeep1@gmail.com');
- delete perticular row
delete from employee
where empoloyee_id =2 ;
---------------------------------------------------------------------
- we can't update this if duplicate value is already available
alter table employee
modify	column email varchar(60) unique;

- it create duplicate index so we need to drop it
alter table employee
modify column	email varchar(50) unique;

SHOW INDEX FROM employee;
alter table employee
drop index email_2;

-If the column is already exist and you only want to change its size

 - alter table employee modify column email varchar(50); 

- rename column
-  alter table student rename column first_name to fname;
- alter table employee add column email varchar(60);
- ALTER TABLE doctors MODIFY Salary DECIMAL(12,2);
- ALTER TABLE doctors DROP COLUMN Doctor_salary;
- TRUNCATE TABLE doctors; - clear data only keep formate of table;
- RENAME TABLE doctors TO doctor_details;
- Constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, DEFAULT)
