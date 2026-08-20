CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    department TEXT,
    cgpa REAL
);

CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    dept_name TEXT,
    hod TEXT
);

CREATE TABLE courses (
    id INTEGER PRIMARY KEY,
    course_name TEXT,
    department TEXT,
    credits INTEGER
);

INSERT INTO departments (id, dept_name, hod) VALUES
(1, 'Computer Science', 'Dr. Rao'),
(2, 'Electronics', 'Dr. Kumar'),
(3, 'Mechanical', 'Dr. Shetty');

INSERT INTO courses (id, course_name, department, credits) VALUES
(1, 'Data Structures', 'Computer Science', 4),
(2, 'Digital Circuits', 'Electronics', 3),
(3, 'Thermodynamics', 'Mechanical', 4);

INSERT INTO students (id, name, age, department, cgpa) VALUES
(1, 'Aarav Shetty', 19, 'Computer Science', 8.7),
(2, 'Diya Pai', 20, 'Computer Science', 9.1),
(3, 'Rohan Kamath', 19, 'Electronics', 7.6),
(4, 'Sneha Rao', 20, 'Mechanical', 8.2),
(5, 'Karthik Nayak', 21, 'Computer Science', 7.9),
(6, 'Ishita Bhat', 19, 'Electronics', 8.9),
(7, 'Aditya Poojary', 20, 'Mechanical', 6.8),
(8, 'Meera Hegde', 21, 'Computer Science', 9.4),
(9, 'Varun Shenoy', 20, 'Electronics', 7.3),
(10, 'Ananya Kini', 19, 'Mechanical', 8.5);


SELECT * FROM students;

SELECT name, cgpa FROM students;


SELECT * FROM students WHERE cgpa > 8.0;


SELECT COUNT(*) FROM students;
SELECT AVG(cgpa) FROM students;
SELECT MAX(cgpa) FROM students;
SELECT MIN(cgpa) FROM students;
SELECT SUM(cgpa) FROM students;

SELECT department, COUNT(*)
FROM students
GROUP BY department;
SELECT department, AVG(cgpa)
FROM students
GROUP BY department;
