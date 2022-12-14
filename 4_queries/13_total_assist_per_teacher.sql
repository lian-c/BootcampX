SELECT teachers.name as teacher, cohorts.name as cohort, count(teachers.name) as total_assistance
FROM assistance_requests
INNER JOIN teachers ON teachers.id = teacher_id
INNER JOIN students ON students.id = student_id
INNER JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;