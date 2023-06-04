SELECT c.name as cohort_name, COUNT(s.id) as student_count
FROM cohorts c
JOIN students s 
ON c.id=s.cohort_id
GROUP BY c.name
HAVING COUNT(s.id) >= 18
ORDER BY student_count;