# DB Lab 2 – Database Design & ER Modeling Assignment

## 📘 About
This lab assignment focuses on **database design concepts**, including **Entity–Relationship (ER) modeling**, conversion of ER diagrams into **relational tables**, and writing **SQL CREATE TABLE statements** using **MySQL** in MySQL Workbench.

The assignment is based on designing a **College Database** involving departments, students, faculty, courses, and enrollments.

---

## 📂 File Structure
- `Question_02.pdf` : Problem statement provided by the instructor  
- `Assignment_02_Solution.sql` : SQL script containing all CREATE TABLE commands (MySQL syntax)  
- `ER_Diagram.png` / `ER_Diagram.drawio` : ER diagram for the College Database  
- `README.md` : Documentation explaining the assignment  
---

## ▶ How to Execute (Using MySQL Workbench)  
1. Open **MySQL Workbench**  
2. Create or select an existing MySQL connection  
3. Create a new schema (database) if required:
```sql
   CREATE DATABASE college_db;
   USE college_db;
'''
---
Open the file Assignment_02_Solution.sql

Execute the SQL statements one by one or run the complete script

---

## 🧩 Database Entities Covered
- Department
- Student
- Faculty
- Course
- Enrollment (Student–Course relationship)

---

## 📝 Assumptions
- MySQL syntax is used
-Primary keys and foreign keys are explicitly defined
-AUTO_INCREMENT is used where necessary
-Enrollment is treated as a separate table to represent the many-to-many relationship
-Appropriate data types and constraints are applied
-ER diagram is created using a digital tool (no hand-drawn diagrams)
---

## 🎯 Objective
- Understand ER modeling concepts
- Identify entities, attributes, and relationships
- Convert ER diagrams into relational schema
- Implement the schema using SQL DDL commands

---

## 🧑‍🎓 Author
**Prem Kishor**  
B.Tech – Computer Science Engineering  
Database Management Systems Lab
