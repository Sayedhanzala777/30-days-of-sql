-- 1. Marks descending
SELECT * FROM students
ORDER BY marks DESC;

-- 2. Age ascending
SELECT * FROM students
ORDER BY age ASC;

-- 3. Grade B, marks ascending
SELECT * FROM students
WHERE grade = 'B'
ORDER BY marks ASC;

-- 4. Top 3 students by marks
SELECT * FROM students
ORDER BY marks DESC
LIMIT 3;

-- 5. Youngest 2 students
SELECT * FROM students
ORDER BY age ASC
LIMIT 2;
