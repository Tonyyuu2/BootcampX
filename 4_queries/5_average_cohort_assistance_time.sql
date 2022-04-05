SELECT cohorts.name, avg(started_at - completed_at) as average_assistance_time
FROM assistance_requests
JOIN student ON student_id = assistance_requests.student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time 