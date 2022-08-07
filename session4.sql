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

CREATE TABLE students (
student_id INT AUTO_INCREMENT,
student_fname VARCHAR(30) NOT NULL,
student_lname VARCHAR(30) NOT NULL,
student_mname VARCHAR(30),
student_email VARCHAR(30) NOT NULL,
student_phone VARCHAR(15) NOT NULL,
student_alternate_phone VARCHAR(15),
enrollment_date TIMESTAMP NOT NULL,
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

