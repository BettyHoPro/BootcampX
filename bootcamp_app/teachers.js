const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
  port: 5432,
});


const cmlVal1 = process.argv[2] || 'JUL02';
const values = [`${cmlVal1}`];

pool
  .query(
    `
    SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
    FROM teachers
    JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id 
    JOIN students ON students.id = assistance_requests.student_id
    JOIN cohorts ON cohorts.id = students.cohort_id
    WHERE cohorts.name = $1
    ORDER BY teacher;
`
  , values)
  .then((response) => {
    console.log('connected');
    response.rows.forEach((user) => {
      console.log(
        `${user.cohort}: ${user.teacher}`
      );
    });
  })
  .catch((err) => console.error("query error", err.stack));
