SELECT cohorts.name as cohort_name, count(students.name) as student_count
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id 
GROUP BY cohorts.id
HAVING count(students.name) >= 18
ORDER BY student_count;