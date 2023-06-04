SELECT SUM(duration) as total_duration
FROM assignment_submissions a
JOIN students s ON s.id= a.student_id
JOIN cohorts c on c.id = s.cohort_id
WHERE c.name ='FEB12';