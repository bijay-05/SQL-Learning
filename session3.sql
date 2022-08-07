use home_db;

show tables;

select * from employee;

desc employee;

INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('john','k','cena',25,20000,'USA');

INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('johnny','k','dope',25,20000,'Uk');
INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('leanardo','d','caprio',25,30000,'SA');
INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('vladimir','k','putin',23,40000,'RUSSIA');
INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('donald','j','trump',27,60000,'USA');
INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('ajith','s','kumar',28,10000,'INDIA');

SELECT * FROM employee;

SELECT firstname,lastname FROM employee;

SELECT firstname AS nae, lastname AS surname FROM employee;

SELECT * FROM employee WHERE age>25;

SELECT * FROM employee WHERE BINARY firstname='Bijay';

UPDATE employee SET lastname='Thapa' WHERE firstname='bijay';

UPDATE employee SET location='pkr' WHERE firstname='Bijay';

DROP TABLE employee;

SHOW TABLES;
