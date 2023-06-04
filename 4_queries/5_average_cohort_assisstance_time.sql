SELECT c.name, AVG(completed_at-started_at) as average_assistance_time
FROM assistance_requests ar
JOIN students s ON s.id=ar.student_id
JOIN cohorts c ON s.cohort_id=c.id
GROUP BY c.name
ORDER BY average_assistance_time;
