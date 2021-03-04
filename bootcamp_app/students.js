const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx',
  port: 5432
});

pool.query(`
SELECT id, name, cohort_id
FROM students
LIMIT 5;
`)
  .then(response => {
    console.log(response.rows);
  })
  .catch(err => console.error('query error', err.stack));