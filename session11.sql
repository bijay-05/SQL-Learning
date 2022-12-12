# WHERE VS HAVING

# SUPPOSE WE NEED TO KNOW NMBER OF STUDENTS FROM VARIOUS SOURCES
SELECT source_of_joining,COUNT(*) AS total FROM students GROUP BY source_of_joining;

# NOW WE NEED TO KNOW LEAD SOURCES, I.E. SOURCES WITH TOTAL MORE THAN 1
# THE FOLLOWING QUERY WONT WORK
SELECT source_of_joining,COUNT(*) AS total FROM students GROUP BY
source_of_joining WHERE total > 1;

# WHERE CLAUSE IS USED TO FILTER INDIVIDUAL RECORDS BEFORE AGGREGATION
# OR ANY GROUPING. TO TACKLE THIS WE USE `HAVING`. THIS IS USED TO FILTER
# RECORDS AFTER THE GROUPING HAS HAPPENED
SELECT source_of_joining,COUNT(*) AS total FROM students GROUP BY 
source_of_joining HAVING total > 1;

# VIEW TOTAL NUMBER OF STUDENTS THROUGH LINKEDIN
SELECT source_of_joining,COUNT(*) AS total FROM students GROUP BY
 source_of_joining HAVING source_of_joining = 'LinkedIn';
 
 # THIS IS NOT GOOD, AS WE ARE DOING COMPLEX GROUPING FIRST
 # AND JUST FILTERING FOR LINKEDIN, RATHER FILTERING SHOULD BE DONE
 # EARLY ON AS POSSIBLE INSTEAD OF ABOVE, TRY BELOW
 
 SELECT source_of_joining,COUNT(*) AS total FROM students WHERE
  source_of_joining = 'Linkedin' GROUP BY source_of_joining;
  
  # USING BOTH WHERE AND HAVING
# LOCATIONS FROM WHICH MORE THAN 1 STDENT HAS JOINED & STUDENT EXPERIENCE
# IS MORE THAN 10 YEARS
SELECT location,COUNT(*) AS total FROM students WHERE years_of_experience > 10
 GROUP BY location HAVING total > 1;