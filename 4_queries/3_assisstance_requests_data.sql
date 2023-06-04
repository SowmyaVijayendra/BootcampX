SELECT t.name, s.name, ass.name, ar.completed_at-ar.started_at as duration
FROM teachers t
JOIN assistance_requests ar ON t.id=ar.teacher_id
JOIN students s ON s.id=ar.student_id
JOIN assignments ass on ass.id=ar.assignment_id
ORDER BY duration;
