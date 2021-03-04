const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx',
  port: 5432
});

pool.query(`
SELECT students.id as student_id, students.name, cohorts.id as cohort
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
LIMIT 5;
`)
  .then(response => {
    response.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    });
    })
  .catch(err => console.error('query error', err.stack));