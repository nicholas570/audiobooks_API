const db = require('../database/config');
const {
  SELECT_WHERE_ID,
  SELECT_ALL_STARTING_BY,
  SELECT_ALL_RELEASED_AFTER,
  SELECT_ALL_BOOKS_SORTED_BY_YEAR,
  INSERT_A_BOOK,
  UPDATE_A_BOOK,
  TOGGLE_A_BOOK,
  DELETE_A_BOOK,
  DELETE_ALL_NOT_BORROWED_BOOKS,
} = require('../database/queries');
let { SELECT_ALL_BOOKS } = require('../database/queries');

const BookModel = {};

// CREATE
BookModel.createOne = (book, id, cb) => {
  db.query(INSERT_A_BOOK, [book], (err, result) => {
    cb(err, result);
  });
};

// READ
BookModel.findAll = (title, cb) => {
  const sqlValue = [];

  if (title) {
    SELECT_ALL_BOOKS += ' WHERE title LIKE ?';
    sqlValue.push(`%${title}%`);
  }

  db.query(SELECT_ALL_BOOKS, [sqlValue], (err, result) => {
    cb(err, result);
  });
};

BookModel.findAllSorted = (cb) => {
  db.query(SELECT_ALL_BOOKS_SORTED_BY_YEAR, (err, result) => {
    cb(err, result);
  });
};

BookModel.findOneById = (id, cb) => {
  db.query(SELECT_WHERE_ID, id, (err, result) => {
    cb(err, result);
  });
};

BookModel.findAllStartingBy = (title, cb) => {
  const sqlValue = `${title}%`;

  db.query(SELECT_ALL_STARTING_BY, [sqlValue], (err, result) => {
    cb(err, result);
  });
};

BookModel.findAllReleasedAfter = (year, cb) => {
  db.query(SELECT_ALL_RELEASED_AFTER, [year], (err, result) => {
    cb(err, result);
  });
};

// UPDATE
BookModel.updateOne = (book, id, cb) => {
  db.query(UPDATE_A_BOOK, [book, id], (err, result) => {
    cb(err, result);
  });
};

BookModel.toggleBorrow = (id, cb) => {
  db.query(TOGGLE_A_BOOK, [id], (err, result) => {
    cb(err, result);
  });
};

// DELETE
BookModel.deleteOne = (id, cb) => {
  db.query(DELETE_A_BOOK, [id], (err, result) => {
    cb(err, result);
  });
};

BookModel.deleteAllNotBorrowed = (cb) => {
  db.query(DELETE_ALL_NOT_BORROWED_BOOKS, (err, result) => {
    cb(err, result);
  });
};

module.exports = BookModel;
