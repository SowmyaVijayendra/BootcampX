SELECT s.name, COUNT(*)
FROM assistance_requests a
JOIN students s ON s.id=a.student_id
WHERE s.name='Elliot Dickinson'
GROUP BY s.name;