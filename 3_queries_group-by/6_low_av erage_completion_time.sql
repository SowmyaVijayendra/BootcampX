SELECT s.name as student, AVG(asb.duration) as average_assignment_duration, AVG(a.duration) as average_estimated_duration
FROM students s
JOIN assignment_submissions asb ON s.id= asb.student_id
JOIN assignments a ON a.id = asb.assignment_id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING AVG(asb.duration) < AVG(a.duration)
ORDER BY average_assignment_duration;