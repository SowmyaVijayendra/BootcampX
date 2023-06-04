SELECT a.id, a.day,a.chapter,a.name, COUNT(ar.assignment_id) as total_requests
FROM assignments a
JOIN assistance_requests ar ON a.id=ar.assignment_id
GROUP BY a.id
ORDER BY total_requests DESC;