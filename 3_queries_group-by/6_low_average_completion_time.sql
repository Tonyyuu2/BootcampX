SELECT student.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM student
JOIN assignment_submissions ON student_id = student.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student 
HAVING avg(assignment_submissions.duration) < avg (assignments.duration)
ORDER BY average_assignment_duration 