-- Perform the same query as before, but include the number of assistances as well.

SELECT teachers.name AS teacher,
cohorts.name AS cohort,
count(*) AS total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;