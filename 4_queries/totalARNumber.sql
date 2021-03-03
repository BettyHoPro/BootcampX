-- SELECT count(assistance_requests.*) as total_assistances, teachers.name as name 
-- FROM teachers
-- JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;