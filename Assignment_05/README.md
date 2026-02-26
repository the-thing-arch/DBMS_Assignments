# 📘 DB Lab 5 – Data Retrieval from Multiple Tables Using JOINs

## 📌 Objective

This lab focuses on understanding and applying **INNER JOIN** operations to retrieve meaningful information from multiple related tables using:

- Primary–Foreign Key relationships  
- Table aliases  
- Proper filtering and sorting techniques  
- Analytical queries using aggregation  

The assignment emphasizes **data retrieval only** without modifying the database structure.

---

## 📂 Repository Features

- 📁 Well-structured assignment folders  
- 🗄 MySQL-compatible SQL scripts  
- ✅ Executed and tested using MySQL Workbench  
- 🔑 Proper use of:
  - Primary Keys  
  - Foreign Keys  
  - Constraints  
  - Data Insertion  
  - Query Execution  
- 🧾 Clean formatting and well-documented SQL code  

---

## 🛠 Tools & Technologies Used

- **Database:** MySQL  
- **Query Language:** SQL  
- **Tool Used:** MySQL Workbench  

---

## 🧠 Concepts Covered

- Why JOIN is needed in relational databases  
- INNER JOIN operations  
- Primary–Foreign Key relationships  
- Table Aliases  
- Joining multiple tables  
- Filtering using `WHERE` clause  
- Sorting using `ORDER BY`  
- Aggregate functions (`COUNT`, `MAX`)  
- Grouping using `GROUP BY`  

---

## 🗂 Lab Structure

### 🔹 Part A: Student–Enrollment Relationship
1. Display StudentID and Name with CourseID  
2. Display student Name and Semester  
3. Display student Name and Grade  

### 🔹 Part B: Course–Faculty Relationship
4. Display CourseName and Credits with Faculty Name  
5. Display courses taught by FacultyID 'F201'  
6. Display faculty Name, Designation, and CourseName  

### 🔹 Part C: Student–Course–Enrollment Relationship
7. Display student Name with CourseName  
8. Display student Name, CourseName, and Semester  
9. Display student Name, CourseName, and Grade for Semester 4  
10. Display courses taken by StudentID 'S401'  

### 🔹 Part D: Department-Based JOIN Queries
11. Display student Name, DepartmentID, and CourseName  
12. Display department-wise list of courses  
13. Display faculty Name with department name  

### 🔹 Part E: JOIN with Filtering and Sorting
14. Display student Name and CourseName for Department 'D101'  
15. Display student Name and CourseName sorted ascending  
16. Display faculty Name and CourseName sorted by credits descending  

### 🔹 Part F: Analytical JOIN Queries
17. Number of students enrolled in each course  
18. Number of courses taught by each faculty member  
19. Department-wise count of students  
20. Course name with maximum grade awarded  

---

## ⚠️ Important Instructions

- Use **INNER JOIN only**  
- Use **table aliases** for readability  
- Ensure correct JOIN conditions  
- Do not modify table structure  
- Insert data only if necessary for meaningful output  

---

## 🎯 Learning Outcomes

After completing this lab, you will be able to:

- Write efficient multi-table JOIN queries  
- Retrieve meaningful data from normalized databases  
- Apply filtering, sorting, and aggregation with JOIN  
- Understand relational database design and data retrieval concepts  

---

**Submitted by:**  
Prem Kishor
B.Tech (CSE)  
DBMS Lab – Assignment 05
