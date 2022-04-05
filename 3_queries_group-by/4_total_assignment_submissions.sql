SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions 
FROM assignment_submissions
JOIN student ON student.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;