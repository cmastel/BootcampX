SELECT students.name, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions
JOIN students ON student_id = students.id 
WHERE students.end_date IS null
GROUP BY students.name
ORDER BY average_assignment_duration DESC;