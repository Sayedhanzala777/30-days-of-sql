-- 1. Create the table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade CHAR(1),
    marks INT
);

-- 2. Insert sample rows
INSERT INTO students (id, name, age, grade, marks) VALUES
(1, 'Ali', 18, 'A', 85),
(2, 'Sara', 19, 'B', 72),
(3, 'John', 17, 'A', 91),
(4, 'Zara', 20, 'C', 66),
(5, 'Amir', 18, 'B', 78);

-- 3. Queries

-- Show all student records
SELECT * FROM students;

-- Show only names and marks
SELECT name, marks FROM students;

-- Show all students older than 18
SELECT * FROM students WHERE age > 18;

-- Show all students with grade = 'A'
SELECT * FROM students WHERE grade = 'A';

-- Show all students ordered by marks descending
SELECT * FROM students ORDER BY marks DESC;

-- Show all students with marks between 70 and 90
SELECT * FROM students WHERE marks BETWEEN 70 AND 90;

-- Show only distinct grades present in the table
SELECT DISTINCT grade FROM students;

-- 4. Update + Delete

-- Update marks of one student (increase by 10)
UPDATE students
SET marks = marks + 10
WHERE id = 2;

-- Delete one student record by id
DELETE FROM students
WHERE id = 4;

-- View final table
SELECT * FROM students;
