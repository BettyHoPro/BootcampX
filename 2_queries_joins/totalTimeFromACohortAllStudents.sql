SELECT sum(assignment_submissions.duration) as  total_duration
FROM  students 
JOIN assignment_submissions on students.id = assignment_submissions.student_id 
JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';