SELECT count(assistance_requests.*) as total_assistances, student.name 
FROM assistance_requests
JOIN student ON student_id = student.id
WHERE name = 'Elliot Dickinson'
GROUP BY student.name;