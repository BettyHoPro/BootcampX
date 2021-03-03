SELECT assignments.name  
FROM assignments
WHERE id NOT IN (
  SELECT assignment_id
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.name = 'Ibrahim Schimmel'
  )

SELECT name, CONCAT(CAST(ROUND(100*population/(
SELECT population
FROM world
WHERE name = 'Germany'), 0) as int), '%')
FROM world
WHERE continent = ' Europe';

SELECT name, CONCAT(CAST(ROUND(100*population/(SELECT population FROM world WHERE name = 'Germany'),0) as int), '%')
FROM world
WHERE continent = 'Europe'

--  SELECT assignment_id
--   FROM assignment_submissions
--   JOIN students ON students.id = student_id
--   WHERE students.name = 'Ibrahim Schimmel';

