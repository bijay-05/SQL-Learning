use home_db;

CREATE TABLE students (
student_id INT AUTO_INCREMENT,
student_fname VARCHAR(30) NOT NULL,
student_lname VARCHAR(30) NOT NULL,
student_mname VARCHAR(30),
student_email VARCHAR(30) NOT NULL,
student_phone VARCHAR(15) NOT NULL,
student_alternate_phone VARCHAR(15),
enrollment_date TIMESTAMP NOT NULL,
years_of_experience INT NOT NULL,
student_company VARCHAR(30),
batch_date VARCHAR(30) NOT NULL,
source_of_joining VARCHAR(30) NOT NULL,
location VARCHAR(30) NOT NULL,
PRIMARY KEY (student_id),
UNIQUE KEY (student_email)
);

DESC students;

DROP TABLE students;

CREATE TABLE courses (
course_id INT NOT NULL,
course_name VARCHAR(30) NOT NULL,
course_duration_months INT NOT NULL,
course_fee INT NOT NULL,
PRIMARY KEY (course_id)
);

INSERT INTO courses (course_id, course_name, course_duration_months,
course_fee) VALUES (1,'big data',6, 35000),(2,'data eng', 4, 20000),(
3,'data analytics', 5, 20000);


CREATE TABLE students (
student_id INT AUTO_INCREMENT,
student_fname VARCHAR(30) NOT NULL,
student_lname VARCHAR(30) NOT NULL,
student_mname VARCHAR(30),
student_email VARCHAR(30) NOT NULL,
student_phone VARCHAR(15) NOT NULL,
student_alternate_phone VARCHAR(15),
enrollment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
selected_course INT NOT NULL DEFAULT 1,
years_of_experience INT NOT NULL,
student_company VARCHAR(30),
batch_date VARCHAR(30) NOT NULL,
source_of_joining VARCHAR(30) NOT NULL,
location VARCHAR(30) NOT NULL,
PRIMARY KEY (student_id),
UNIQUE KEY (student_email),
FOREIGN KEY (selected_course) REFERENCES courses(course_id)
);

use home_db;
INSERT INTO students (student_fname,student_lname,student_email,
student_phone,enrollment_date,years_of_experience,student_company,batch_date,
source_of_joining,location) VALUES ('Bijay','Pachhai','bj@gmail','212',
'2021-01-01',5,'wrc','19-02-2021','quora','chennai');



INSERT INTO students (student_fname,student_lname,student_email,
student_phone,years_of_experience,student_company,batch_date,
source_of_joining,location) VALUES ('kapil','dev','kd@gmail','123',10,
'microsoft','5-02-2021','friend','pune'),('brian','dev','bd@gmail','223',5,
'motorola','5-02-2021','youtube','pune'),('john','cena','jc@gmail','323',14,
'wwe','19-02-2021','LinkedIn','goa'),('lasith','malinga','lm@gmail','423',12,
'wipro','5-02-2021','Google','delhi');

SELECT * FROM students;








