# SQL-Learning
This repository contains files with SQL snippets while learning SQL from YouTube playlist from TrendyTech channel.

## SQL
SQL (Structured Query Language) is the de-facto language for interacting with relational databases. The SQL language is very user friendly and easy to understand the SQL statements. Let's see what can we learn in 1 week period of time.

Topics covered till the creation of this repository.

- Creating databases and tables
- Using databases
- Data types in MySQL db
- CRUD operations (Creating new records, reading existing records, Updating records and deleting them)
- DDL vs DML (DDL- CREATE, ALTER, DROP vs DML- UPDATE, INSERT, DELETE)

### Foreign Keys
This helps to check the validity of a values in FOREIGN KEY column whether the value is valid or not with references in another table. For instance checking whether the selected course_id is available or not in courses table. Since the dependency is upon the courses table, courses table is parent table while students table is child table.
If a course is not opted by any student till now, then that course can be deleted from courses table with `DELETE FROM courses WHERE course_id=4`. But the courses that are already enrolled cannot be deleted since this will make the data invalid in child table `students`.
