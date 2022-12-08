USE home_db;
SELECT COUNT(*) FROM students;

SELECT COUNT(DISTINCT student_company) FROM students;

SELECT COUNT(DISTINCT student_company) AS num_companies FROM students;

SELECT COUNT(DISTINCT location) FROM students;

SELECT COUNT(DISTINCT source_of_joining) FROM students;

SELECT COUNT(*) FROM students WHERE batch_date LIKE '%-02-%';
SELECT COUNT(*) FROM students WHERE batch_date LIKE '19-02-%';

# WHAT I WANT IS TO KNOW THAT HOW MANY PEOPLE HAVE JOINED MY COURSE 
# GOT TO KNOW ABOUT ME THROUGH LINKEDIN-5, QUORA-2 GROUPBY ON source_of_joining
# YOU MUST SELECT THE COL ON WHOSE BASIS THE GROUPING IS DONE

SELECT source_of_joining,COUNT(*) FROM students 
GROUP BY source_of_joining;

SELECT location, COUNT(*) FROM students GROUP BY location;

SELECT location, source_of_joining,COUNT(*) FROM students
GROUP BY location, source_of_joining;

SELECT selected_course FROM students;
SELECT selected_course, COUNT(*) FROM students GROUP BY selected_course;

SELECT batch_date, selected_course, COUNT(*) FROM students GROUP BY batch_date,
selected_course;

# MIN MAX
SELECT MIN(years_of_experience) FROM students;
SELECT MAX(years_of_experience) FROM students;

SELECT MAX(years_of_experience), student_fname FROM students;
# THE ABOVE QUERY DOESNOT WORK

SELECT student_fname FROM students ORDER BY years_of_experience LIMIT 1;

# FOR EACH SOURCE OF JOINING i WANT TO GET MAX EXPERIENCE
SELECT source_of_joining, years_of_experience FROM students;
SELECT source_of_joining, MAX(years_of_experience) FROM students
GROUP BY source_of_joining;

SELECT source_of_joining, SUM(years_of_experience) FROM students
GROUP BY source_of_joining;

SELECT source_of_joining, AVG(years_of_experience) FROM students
GROUP BY source_of_joining;
