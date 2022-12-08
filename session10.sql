SHOW TABLES;
# NEED TO KNOW IN WHICH COURSE RAHUL HAS ENROLLED

SELECT student_fname,selected_course FROM students;
# RAHUL,1
# COURSE NAME IS IN OTHER TABLE

SELECT course_id,course_name FROM courses;
# 1, bIG DATA

SELECT course_name FROM courses WHERE course_id = (
SELECT selected_course FROM students WHERE student_fname = 'john');

# WE CAN JOIN THESE TWO TABLES ON TWO COLUMNS, course_id, selected_course

SELECT student_fname,student_lname,course_name FROM students JOIN courses
 ON students.selected_course = courses.course_id;
 
# BY DEFAULT, IT IS INNER JOIN, ONLY MATCHING RECORDS ARE SHOWN

# LEFT OUTER JOIN, ALL MATCHING RECORDS ARE SHOWN + ALL NON MATCHING
# RECORDS IN THE LEFT TABLE, WHICH DOES NOT HAVE MATCH IN THE RIGHT

CREATE TABLE students_latest AS SELECT * FROM students;
# THIS WILL CREATE students TABLE COPY IN students_latest, BUT WITHOUT CONSTRAINTS
CREATE TABLE courses_latest AS SELECT * FROM courses;

SELECT * FROM courses_latest;
DELETE FROM courses_latest WHERE course_id=1;

SELECT student_fname,student_lname,course_name FROM students_latest JOIN courses_latest
 ON students_latest.selected_course = courses_latest.course_id;
 
# LEFT OUTER JOIN
SELECT student_fname,student_lname,course_name FROM students_latest LEFT 
 JOIN courses_latest
 ON students_latest.selected_course = courses_latest.course_id;
 
# RIGHT OUTER JOIN
# ALL MATCHING RECORDS FROM BOTH TABLES + ALL NON MATCHING FROM RIGHT
# TABLE
SELECT student_fname,student_lname,course_name FROM students_latest
 RIGHT JOIN courses_latest
 ON students_latest.selected_course = courses_latest.course_id;
 
# FULL OUTER JOIN ALL MATCHING + NON MATCHING FROM BOTH TABLES
# NO SUCH KEWORD, SO USE UNION KEY WORD
SELECT student_fname,student_lname,course_name FROM students_latest LEFT 
 JOIN courses_latest
 ON students_latest.selected_course = courses_latest.course_id
 UNION
 SELECT student_fname,student_lname,course_name FROM students_latest
 RIGHT JOIN courses_latest
 ON students_latest.selected_course = courses_latest.course_id;
 
SELECT * FROM students,courses;
# THIS IS CROSS JOIN, FOR EVERY ROW IN STUDENTS TABLE, IT TRIES TO COMBINE
# WITH EACH RECORD IN COURSES TABLES
SELECT COUNT(*) FROM students;
SELECT COUNT(*) FROM courses;
SELECT COUNT(*) FROM students,courses;