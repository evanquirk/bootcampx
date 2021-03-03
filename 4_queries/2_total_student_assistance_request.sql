-- Get the total number of assistance_requests for a student.

SELECT count(*) AS total_assistances, name
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name