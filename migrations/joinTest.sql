SELECT students.name as student_name, students.email as email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohort_id = cohorts.id;