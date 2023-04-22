const mysql = require('mysql2');
require('dotenv').config();

// Connecting to database
const db = mysql.createConnection(
    {
      host: 'localhost',
      user: process.env.DB_USER,
      password: process.env.DB_PASS,
      database: process.env.DB_NAME
    },
    console.log(`Connecting to the ${process.env.DB_NAME} database.\n`)
  );

  // testing query
db.query('SELECT 1+1 as test1', (err, result) => {
  if (err) {
    console.log('\n\nDatabase connection failed!');
    console.log(`Verify that 'staff_db' exists in your MySQL server.`);
    console.log(`Try to run 'source schema.sql' in MySQL.`);
    console.log('Quitting application.');
    db.end();
    process.exit();
  }
});

module.exports = db;