SELECT name, id, cohort_id
FROM students
WHERE email NOT LIKE ('%gmail%')
