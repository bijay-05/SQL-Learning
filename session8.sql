session 9
===============
USE home_db;
CREATE TABLE courses_new(
course_id INT NOT NULL,
course_name VARCHAR(30) NOT NULL,
course_duration_months DECIMAL(3,1) NOT NULL,
course_fee INT NOT NULL,
PRIMARY KEY(course_id)
);

DECIMAL(3,1) means entries can have 3 digits with 1 digit being after decimal

INSERT INTO courses_new VALUES(1, 'Big Data', 3.5, 50000);
INSERT INTO courses_new VALUES(2, 'dsa', 4.5, 30000);

SELECT * FROM courses_new;

UPDATE courses_new SET course_fee = 40000 WHERE course_id = 2;

DROP TABLE courses_new;

# creating audit column to see when entries were changed or updated
CREATE TABLE courses_new(
course_id INT NOT NULL,
course_name VARCHAR(30) NOT NULL,
course_duration_months DECIMAL(3,1) NOT NULL,
course_fee INT NOT NULL,
changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
PRIMARY KEY(course_id)
);

INSERT INTO courses_new(course_id,course_name,course_duration_months,course_fee)
 VALUES(1, 'Big Data', 3.5, 50000);
INSERT INTO courses_new(course_id,course_name,course_duration_months,course_fee)
 VALUES(2, 'dsa', 4.5, 30000);
 
SELECT * FROM courses_new;
UPDATE courses_new SET course_fee = 40000 WHERE course_id = 2;
SELECT * FROM courses_new;
# WE DIDNOT GET UPDATED changed_at 

DROP TABLE courses_new;
CREATE TABLE courses_new(
course_id INT NOT NULL,
course_name VARCHAR(30) NOT NULL,
course_duration_months DECIMAL(3,1) NOT NULL,
course_fee INT NOT NULL,
changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP() ON UPDATE NOW(),
PRIMARY KEY(course_id)
);

INSERT INTO courses_new(course_id,course_name,course_duration_months,course_fee)
 VALUES(1, 'Big Data', 3.5, 50000);
INSERT INTO courses_new(course_id,course_name,course_duration_months,course_fee)
 VALUES(2, 'dsa', 4.5, 30000);
 
SELECT * FROM courses_new;
UPDATE courses_new SET course_fee = 60000 WHERE course_id = 2;
SELECT * FROM courses_new;