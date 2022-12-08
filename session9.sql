USE home_db;
SELECT * FROM students WHERE location = 'bangalore';

# TO GET PEOPLE WHO ARE NOT FROM BANGALORE
SELECT * FROM students WHERE location != 'bangalore';

# GET ALL COURSES WHICH HAS THE WORD 'DATA'
SELECT * FROM courses WHERE course_name LIKE '%ds%';

SELECT * FROM courses WHERE course_name NOT LIKE '%ds%';

# STUDENTS FROM BANGALORE WHO JOINED THROUGH LINKEDIN AND
# HAVE LESS THAN 8 Y_O_E
SELECT * FROM students WHERE years_of_experience < 8
 AND source_of_joining = 'lINKEDiN'
 AND location = 'bangalore';
 
# all STUDENTS WHO DONOT FALL BETWEEN 8-12 Y_o_E
SELECT * FROM students WHERE years_of_experience < 8
 OR years_of_experience > 12;
SELECT * FROM students WHERE years_of_experience NOT BETWEEN 8 AND 12;

# GET LIST OF STUDENTS WHO ARE WORKING FOR FLIPKART,WALMART,MICROSOFT
SELECT * FROM students WHERE student_company='flipkart'
 OR student_company = 'walmart' 
 OR student_company = 'microsoft';

# EASY WAY
SELECT * FROM students WHERE student_company
 IN ('flipkart','walmart','microsoft');
 
SELECT * FROM students WHERE student_company
 NOT IN ('flipkart','walmart','microsoft');
 
# IF A COURSE IS MORE THAN 4 MONTHS, WE CATEGORISE IT AS MASTERS
# OR ELSE DIPLOMA
SELECT course_id,course_name,course_fee,
 CASE
     WHEN course_duration_months > 4 THEN 'masters'
     ELSE 'diploma'
 END AS course_type
 FROM courses
 
# STUDENTS FROM FLIPKART,WALMART,MICROSOFT AS PRODUCT BASED
# AND OTHERS AS SERVICE BASED
SELECT student_id,student_fname,student_lname,student_company,
 CASE
  WHEN student_company IN ('flipkart','walmart','microsoft') THEN 'product based'
  WHEN student_company IS NULL THEN 'invalid company'
  ELSE 'service based'
 END AS company_type
 FROM students;
 