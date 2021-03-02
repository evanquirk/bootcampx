SELECT students.name AS student,
      avg(assignment_submissions.duration) AS average_assignment_duration
  FROM students
  LEFT OUTER JOIN assignment_submissions ON student_id = students.id
  JOIN assignments on assignment_id = assignments.id
  WHERE students.end_date IS NULL
  GROUP BY students.name
  ORDER BY average_assignment_duration DESC;