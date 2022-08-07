CREATE DATABASE home_db;
use home_db;
CREATE TABLE employee (
firstname varchar(20) NOT NULL,
middlename varchar(20),
lastname varchar(20) NOT NULL,
age int NOT NULL,
salary int NOT NULL,
location varchar(20) NOT NULL DEFAULT 'bangalore'
);

desc employee;

INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ("Bijay","kr","Pachhai",25,10000,"Bhw");

SELECT * FROM employee;