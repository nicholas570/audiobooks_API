const express = require('express');
const cors = require('cors');
const db = require('./database/config');

const port = process.env.PORT || 3000;
const app = express();

app.use(cors());
app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);

app.get('/', (req, res) => {
  db.query('SELECT * FROM book', (err, result) => {
    if (err) {
      res.json(err);
    }
    res.send(result);
  });
});

app.listen(port, (err) => {
  if (err) {
    throw new Error(err);
  } else {
    // eslint-disable-next-line
    console.log(`server listening on port: ${port}`);
  }
});
