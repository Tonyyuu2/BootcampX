SELECT cohorts.name AS cohort_name, count(student.*) AS student_count 
FROM cohorts 
JOIN student ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(student.*) >= 18
ORDER BY student_count;