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

bookController.getOneById = async (req, res) => {
  await BookModel.findOneById(req.params.id, (err, result) => {
    if (err) {
      return res.status(500).json({
        success: false,
        error: err.message,
        books: {},
      });
    }
    if (result.length === 0) {
      return res.status(404).json({
        success: true,
        message: 'No book found',
        error: '',
        books: result,
      });
    }
    return res.status(200).json({
      success: true,
      error: '',
      books: result,
    });
  });
};

module.exports = bookController;
