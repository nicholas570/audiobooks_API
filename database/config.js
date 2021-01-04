const mysql = require('mysql');
require('dotenv').config();

let db;

function getConnection() {
  if (!db) {
    db = mysql.createConnection({
      host: process.env.HOST,
      user: process.env.DB_USER,
      password: process.env.PASSWORD,
      database: process.env.NAME,
    });
  }
  if (db && db.state === 'disconnected') {
    db.connect((err) => {
      if (err) {
        console.error(`error connecting: ${err.stack}`);
        return;
      }

      console.log(`connected as id ${db.threadId}`);
    });
  }

  return db;
}

module.exports = getConnection();
