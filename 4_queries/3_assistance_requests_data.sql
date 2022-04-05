SELECT teachers.name as teacher, student.name as student, assignments.name as assignment, (completed_at - started_at) as duration 
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN student ON student_id = student.id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;