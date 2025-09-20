-- 1. Marks > 80
SELECT * FROM students
WHERE marks > 80;

-- 2. Age < 19
SELECT * FROM students
WHERE age < 19;

-- 3. Grade = 'A'
SELECT * FROM students
WHERE grade = 'A';

-- 4. Marks between 70 and 90
SELECT * FROM students
WHERE marks BETWEEN 70 AND 90;

-- 5. Name starts with 'A'
SELECT * FROM students
WHERE name LIKE 'A%';
