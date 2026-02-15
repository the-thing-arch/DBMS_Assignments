
--Part A: Basic Data Display (Using Aliases)
--Display all columns from the Student table using suitable aliases for every column.
SELECT 
    Student_ID AS Roll_No,
    Name AS Student_Name,
    Date_of_Birth AS DOB,
    Gender AS Sex,
    Contact_No AS Contact,
    Dept_ID AS Department_ID
FROM Student;


--Display only StudentID, Name, and DepartmentID from the Student table, renaming
--them as Roll_No, Student_Name, and Dept_ID.
SELECT 
    Student_ID AS Roll_No,
    Name AS Student_Name,
    Dept_ID AS Department_ID
FROM Student;


--Display FacultyID, Name, Designation, and Email from the Faculty table using
--readable column names.
SELECT
    Faculty_ID AS Faculty_ID,
    Name AS Faculty_Name,
    Designation AS Faculty_Designation,
    Email AS Faculty_Email
FROM Faculty;


--Display all columns from the Course table with renamed column headers
SELECT
    Course_ID AS ID,
    Course_Name AS Name,
    Credits AS Points,
    Dept_ID AS Department_ID,
    Faculty_ID AS Faculty_ID
FROM COURSE;

--Display all columns from the Enrollment table with meaningful aliases
SELECT
    Enrollment_ID AS Enroll_ID,
    Semester AS Sem,
    Grade AS Marks,
    Student_ID AS Std_ID,
    Course_ID AS course_ID
FROM ENROLLMENT;

--Part B: Conditional Data Display (WHERE Clause)
SELECT *
FROM STUDENT
WHERE DEPT_ID = 101;


SELECT * 
FROM STUDENT
WHERE GENDER = 'F';

SELECT * 
FROM FACULTY
WHERE DESIGNATION = 'Assistant Professor';

--Display faculty members whose DepartmentID is 'D102'.
SELECT * 
FROM FACULTY
WHERE DEPT_ID = 102;

-- Display courses whose Credits are greater than or equal to 4.
SELECT *
FROM COURSE
WHERE CREDITS >= 4;


--Part C: Sorting and Limiting Results
SELECT * 
FROM STUDENT 
ORDER BY DATE_OF_BIRTH DESC;


-- Display only the first 3 student records.
SELECT *
FROM STUDENT
LIMIT 3 ;


--Part D: Derived / Computed Output (No Table Modification)
SELECT 
    Name,
    TIMESTAMPDIFF(YEAR, Date_of_birth, CURDATE()) AS Age
FROM STUDENT;

SELECT 
    COURSE_NAME,
    CREDITS + 1 AS UPDATED_CREDITS
FROM COURSE;


--Display student Name along with year of birth extracted from DOB.
SELECT 
    NAME,
    EXTRACT(YEAR FROM DATE_OF_BIRTH) AS YEAR_OF_BIRTH
FROM STUDENT;

--Display faculty Name along with email domain extracted from Email.
SELECT 
    NAME,
    SUBSTR(EMAIL, INSTR(EMAIL, '@') + 1) AS EMAIL_DOMAIN
FROM FACULTY;
