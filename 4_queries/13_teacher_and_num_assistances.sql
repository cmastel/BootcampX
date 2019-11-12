SELECT teachers.name AS teacher, 
                cohorts.name AS cohort,
                COUNT(teacher_id) AS total_assistance
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id 
JOIN cohorts ON cohort_id = cohorts.id 
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;
