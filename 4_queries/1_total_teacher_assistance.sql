-- Get the total number of assistance_requests for a teacher.

SELECT count(*) AS total_assistances FROM teachers, name
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;