USE home_db;
CREATE TABLE employee (
firstname VARCHAR(20),
lastname VARCHAR(20),
age INT,
salary INT,
location VARCHAR(20)
);

INSERT INTO employee VALUES('sachin','sharma',28,10000,'bangalore');
INSERT INTO employee VALUES('shane','warne',30,20000,'bangalore');
INSERT INTO employee VALUES('rohit','sharma',32,30000,'hyderabad');
INSERT INTO employee VALUES('shikhar','dhawan',32,25000,'hyderabad');
INSERT INTO employee VALUES('rahul','dravid',31,20000,'bangalore');
INSERT INTO employee VALUES('saurabh','ganguly',32,15000,'pune');
INSERT INTO employee VALUES('kapil','dev',34,10000,'pune');

# how many people are from each location and average salary at each location
SELECT location,COUNT(location) AS total,AVG(salary) AS avg_salary
 FROM employee GROUP BY location;
 
# THE FOLLOWING QUERY WONT WORK
SELECT firstname,lastname,location,COUNT(location),AVG(salary)
 FROM employee GROUP BY location;
 
# WE CAN ACHIEVE IT WITH JOIN
SELECT firstname,lastname,employee.location,total_count,avg_salary
 FROM employee JOIN (SELECT location,COUNT(location) AS total_count
 ,AVG(salary) AS avg_salary FROM employee GROUP BY location) TEMPTABLE ON
 employee.location = TEMPTABLE.location;
 
# WE CAN USE OVER PARTITION BY TO ACHIEVE THIS EASILY
SELECT firstname,lastname,location,
COUNT(location) OVER (PARTITION BY location) AS total,
AVG(salary) OVER (PARTITION BY location) AS average
FROM employee;
# WE CAN USE UN-AGGREGATED COLS WITH AGGREGATED COLS WITH OVER PARTITION
# BY
