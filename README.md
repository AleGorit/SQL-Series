
# 🎓 Student Course Management System

A simple SQL-based relational database project for managing students, instructors, courses, and enrollments within an academic institution. The system includes data models, sample data, key queries, and a trigger for logging enrollments.


## 📘 Project Description

This project simulates a course management system using SQL. It consists of four core entities: **Students**, **Instructors**, **Courses**, and **Enrollments**. It supports basic operations like inserting data, querying enrolled students, tracking grades, and logging new enrollments via triggers.

---

## 🗂️ Entity Relationship Diagram (ERD)

![defaultdb - course_management](https://github.com/user-attachments/assets/41a650fc-8232-44ba-8045-96194f44da57)


Entities and Relationships:

* A **Student** can enroll in many **Courses**
* A **Course** is taught by one **Instructor**
* An **Instructor** can teach multiple **Courses**
* **Enrollments** link students and courses, including grade info

## 🧱 Schema Explanation

* `students`: Stores student details including name, email, and date of birth.
* `instructors`: Stores instructor profiles.
* `courses`: Each course has a name, description, and an associated instructor.
* `enrollments`: Joins students to courses with enrollment date and grade.
* `enrollment_logs`: Logs new enrollments via trigger (for auditing).

---

## 🧠 Key SQL Queries

### 🔍 Students Who Failed More Than One Course


### 🔐 Index on `student_id` in `enrollments`

### ⚙️ Trigger for Logging New Enrollments


## ⚠️ Challenges and Lessons Learned

* Ensuring cross-DBMS compatibility (PostgreSQL vs MySQL syntax)
* Normalizing tables for clarity and efficiency
* Handling date formats consistently in `INSERT` statements
* Learning how to implement triggers and logging mechanisms
* Importance of indexes for performance on large datasets

---

## 📬 Feedback

Feel free to fork, clone, or open an issue if you'd like to contribute or have suggestions for improvements!


![defaultdb - course_management](https://github.com/user-attachments/assets/3f3c64d6-093c-4bca-ac48-c37d13d824ff)
