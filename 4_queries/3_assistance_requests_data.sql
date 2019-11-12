SELECT teachers.name AS teacher, 
        students.name AS student, 
        assignments.name AS assignment, 
        (completed_at - started_at) AS duration
FROM students
JOIN assistance_requests ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
JOIN teachers ON teacher_id = teachers.id
ORDER BY duration;