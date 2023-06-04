SELECT c.name as cohort_name, COUNT(a.id) as total_submissions
FROM cohorts c
JOIN students s ON c.id=s.cohort_id
JOIN assignment_submissions a ON s.id= a.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;