# 💻 Task 4 – Aggregate Functions and Grouping

## 🎯 Objective:
To apply aggregate functions and use GROUP BY and HAVING clauses to analyze tabular data from a relational database.

---

## 🛠 Tools Used:
- MySQL Workbench
- SQL Queries

---

## 🗂 Tables Used:
Same as Task 3:
- students
- courses
- enrollments

---

## 📋 SQL Queries and Purpose:

### 1. Total number of students:
```sql
SELECT COUNT(*) AS TotalStudents FROM students;
