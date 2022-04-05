SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort 
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN student ON student_id = student.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;