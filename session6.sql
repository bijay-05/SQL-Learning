USE home_db;

SELECT DISTINCT source_of_joining FROM students ORDER BY
enrollment_date DESC;

SELECT source_of_joining FROM students;
# ORDER OF EXECUTION
==================

FROM (LOADING THE TABLE)

SELECT (PROJECTING source_of_joining)
-----------------------------
SELECT source_of_joining,enrollment_date FROM students ORDER BY
enrollment_date;
# ORDER OF EXECUTION
================== 

FROM (LOADING THE TABLE)-> SELECT * FROM students

SELECT (PROJECTING source_of_joining, enrollment_date)

ORDER BY (BASED ON enrollment_date)

------------------------------------
SELECT source_of_joining FROM students ORDER BY enrollment_date;
# HERE EVEN THOUGH WE HAVE NOT SELECTED enrollment_date, THE SYSTEM
# KNOWS ABOUT ITS DEPENDENCY LATER IN THE QUERY SO IT SELECTS enrollment_date
# AS WELL
# ORDER OF EXECUTION
================== 

FROM (LOADING THE TABLE)-> SELECT * FROM students

SELECT (PROJECTING source_of_joining, enrollment_date)

ORDER BY (BASED ON enrollment_date)
-------------------------------------
SELECT DISTINCT source_of_joining FROM students ORDER BY
enrollment_date;
# ORDER OF EXECUTION
================== 

FROM (LOADING THE TABLE)-> SELECT * FROM students

SELECT (PROJECTING source_of_joining, enrollment_date)
-> SELECT source_of_joining, enrollment_date FROM students;

DISTINCT -> SELECT DISTINCT source_of_joining,enrollment_date FROM students;
# HERE DISTINCT IS HAPPENING ON COMBO OF TWO COLUMNS WHICH IS WRONG

ORDER BY (BASED ON enrollment_date)
