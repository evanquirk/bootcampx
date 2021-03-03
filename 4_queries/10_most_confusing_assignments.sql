-- List each assignment with the total number of assistance requests with it.

SELECT assignments.id, 
name, 
day, 
chapter,
count(*) AS total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;