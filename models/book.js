const db = require('../database/config');
const { SELECT_ALL_BOOKS, SELECT_WHERE_ID } = require('../database/queries');

const BookModel = {};

BookModel.findAll = (cb) =>
  db.query(SELECT_ALL_BOOKS, (err, result) => {
    cb(err, result);
  });

BookModel.findOneById = (id, cb) =>
  db.query(SELECT_WHERE_ID, id, (err, result) => {
    cb(err, result);
  });

module.exports = BookModel;
