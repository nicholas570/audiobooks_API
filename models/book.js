const db = require('../database/config');
const { SELECT_ALL_BOOKS } = require('../database/queries');

const BookModel = {};

BookModel.findAll = (cb) =>
  db.query(SELECT_ALL_BOOKS, (err, result) => {
    cb(err, result);
  });

module.exports = BookModel;
