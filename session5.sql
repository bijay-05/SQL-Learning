use home_db;
SELECT location FROM students;

SELECT DISTINCT location FROM students;

SELECT DISTINCT student_company FROM students;

SELECT DISTINCT source_of_joining FROM students;

SELECT student_id,student_fname,selected_course FROM students;

SELECT student_id,enrollment_date,selected_course,student_fname,
years_of_experience,student_company,batch_date,source_of_joining FROM students
ORDER BY years_of_experience;

SELECT student_fname FROM students ORDER BY student_fname;
SELECT student_fname,years_of_experience FROM students 
ORDER BY years_of_experience;

SELECT student_fname,years_of_experience FROM students 
ORDER BY years_of_experience DESC;
SELECT student_fname,years_of_experience FROM students 
ORDER BY 2 DESC;

SELECT student_fname,years_of_experience FROM students 
ORDER BY years_of_experience,student_fname;

SELECT student_fname,years_of_experience FROM students 
ORDER BY years_of_experience LIMIT 3;

SELECT student_fname,source_of_joining FROM students ORDER BY
enrollment_date DESC LIMIT 5;
SELECT DISTINCT source_of_joining FROM students ORDER BY
enrollment_date DESC LIMIT 5;

SELECT student_id,enrollment_date,selected_course,student_fname,
years_of_experience,student_company,batch_date,source_of_joining FROM
students ORDER BY enrollment_date DESC LIMIT 1;

SELECT * FROM students ORDER BY enrollment_date LIMIT 0,3;


SELECT student_id,enrollment_date,selected_course,student_fname,
years_of_experience,student_company,batch_date,source_of_joining FROM 
students WHERE student_fname LIKE '%ka%';

SELECT student_id,enrollment_date,selected_course,student_fname,
years_of_experience,student_company,batch_date,source_of_joining FROM 
students WHERE student_fname LIKE 'ka%';

SELECT student_id,enrollment_date,selected_course,student_fname,
years_of_experience,student_company,batch_date,source_of_joining FROM 
students WHERE student_fname LIKE '%hn';

SELECT student_id,enrollment_date,selected_course,student_fname,
years_of_experience,student_company,batch_date,source_of_joining FROM 
students WHERE student_fname LIKE '_____';

SELECT student_id,enrollment_date,selected_course,student_fname,
years_of_experience,student_company,batch_date,source_of_joining FROM 
students WHERE student_fname LIKE '%\%il';