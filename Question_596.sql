WITH class_counts AS (
    SELECT 
        class,
        COUNT(*) OVER (PARTITION BY class) as student_count
    FROM Courses
)
SELECT DISTINCT class
FROM class_counts
WHERE student_count >= 5;
