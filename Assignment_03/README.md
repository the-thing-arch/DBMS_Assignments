# DBMS Lab – Assignment 03  
## Data Collection and Data Insertion in College Database

---

## 📘 About the Assignment

This assignment focuses on collecting real-world academic data and inserting it into a relational database using SQL.

The objective is to understand how real institutional data is structured and maintained inside a database while ensuring:

- Proper use of primary keys  
- Foreign key constraint satisfaction  
- Data consistency  
- Referential integrity  

The database schema used in this assignment was created in **Lab–2 (ER Diagram and Table Creation).**

All data corresponds to:

**B.P. Mandal College of Engineering, Madhepura, Bihar**

Only authentic sources were used for data collection, such as:

- Official college website  
- Department webpages  
- Academic syllabus  
- Class timetable  
- Academic notices  

No imaginary or randomly generated academic data has been used.

---

## 🗂 Database Tables Used

The following tables were populated:

1. Department  
2. Faculty  
3. Course  
4. Student  
5. Enrollment  

---

## 📂 File Structure

```
Assignment_03/
│
├── datasource/
│
├── Course_03.csv            #Excel output of Course table.
├── Department_03.csv        #Excel output of Department table.
├── Enrollment_03.csv        #Excel output of Enrollment table.
├── Faculty_03.csv            #Excel output of Faculty table.
├── student_03.csv            #Excel output of Student table.
│
├── assignment03soln.sql  # Contains all INSERT queries
├── questions_03.pdf      # Original assignment question
└── README.md              # Documentation file

```

---

## 🚀 How to Execute the Project

### 1️⃣ Open MySQL Workbench
Connect to your MySQL server.

### 2️⃣ Select Database

```sql
USE college_db;
SHOW TABLES;
```

### 3️⃣ Execute SQL Script

Open:

```
assignment03soln.sql
```

Run using:

```
Ctrl + Shift + Enter
```

---

## 🔍 Verification Queries

```sql
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
SELECT * FROM Enrollment;
```

---

---

## 🎯 Learning Outcomes

Through this assignment, I strengthened my understanding of:

- Relational database modeling  
- Constraint enforcement in MySQL  
- Structured data insertion  
- Handling table dependencies  
- Practical DBMS implementation  

---

## 📎 Assignment Reference

- `questions_03.pdf` → Official assignment problem statement  
- `assignment03soln.sql` → Complete SQL solution  
- CSV files → Structured dataset  

---

## 📊 Requirements Followed

- Minimum 10 records inserted in Student, Course, and Enrollment tables  
- No primary key duplication  
- All foreign key constraints satisfied  
- Data consistency maintained  

---

## ⚠ Assumptions Made

1. Department ID, Faculty ID, Course ID, and Student ID are self-defined but unique.
2. If exact office block details were unavailable, placeholder values like "Block A" or "Block B" were used.
3. Credits were assigned based on syllabus structure where available.
4. Student contact numbers use dummy format (e.g., 9XXXXXXXXX) to maintain privacy.
5. Grades in the Enrollment table (A, B+, etc.) are assumed for representation.

---

## 📚 Data Sources

Data has been collected from:

- Official website of B.P. Mandal College of Engineering
- Department faculty lists
- Academic syllabus and timetable
- Academic notices

---

## ✅ Conclusion

This assignment demonstrates practical data collection, structured SQL insertion, and maintenance of relational integrity within a real-world college database model.

---

**Submitted by:**  
Prem Kishor
B.Tech (CSE)  
DBMS Lab – Assignment 03
