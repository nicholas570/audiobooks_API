const BookModel = require('../models/book');

const bookController = {};

bookController.getAll = async (req, res) => {
  await BookModel.findAll((err, results) => {
    if (err) {
      return res.status(500).json({
        success: false,
        error: err.message,
        books: {},
      });
    }
    return res.status(200).json({
      success: true,
      error: '',
      books: results,
    });
  });
};

module.exports = bookController;
