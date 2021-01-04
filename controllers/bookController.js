const BookModel = require('../models/book');

const bookController = {};

// GET
bookController.getAll = async (req, res) => {
  await BookModel.findAll(req.query.title, (err, results) => {
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

bookController.getAllSorted = async (req, res) => {
  await BookModel.findAllSorted((err, results) => {
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

bookController.getAllStartingBy = async (req, res) => {
  await BookModel.findAllStartingBy(req.query.title, (err, result) => {
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

bookController.getAllReleasedAfter = async (req, res) => {
  await BookModel.findAllReleasedAfter(req.query.year, (err, result) => {
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

// POST
bookController.addABook = async (req, res) => {
  await BookModel.createOne(req.body, async (err, results) => {
    if (err) {
      return res.status(500).json({
        success: false,
        error: err.message,
        books: {},
      });
    }

    await BookModel.findOneById(results.insertId, (error, result) => {
      if (err) {
        return res.status(500).json({
          success: false,
          error: error.message,
          books: {},
        });
      }

      return res.status(201).json({
        success: true,
        error: '',
        books: result,
      });
    });
  });
};

// PUT
bookController.modifyABook = async (req, res) => {
  await BookModel.updateOne(req.body, req.params.id, async (err, results) => {
    if (err) {
      return res.status(500).json({
        success: false,
        error: err.message,
        books: {},
      });
    }

    await BookModel.findOneById(req.params.id, (error, result) => {
      if (err) {
        return res.status(500).json({
          success: false,
          error: error.message,
          books: {},
        });
      }

      return res.status(201).json({
        success: true,
        error: '',
        books: result,
      });
    });
  });
};

bookController.modifyABook = async (req, res) => {
  await BookModel.updateOne(req.body, req.params.id, async (err, results) => {
    if (err) {
      return res.status(500).json({
        success: false,
        error: err.message,
        books: {},
      });
    }

    await BookModel.findOneById(req.params.id, (error, result) => {
      if (err) {
        return res.status(500).json({
          success: false,
          error: error.message,
          books: {},
        });
      }

      return res.status(201).json({
        success: true,
        error: '',
        books: result,
      });
    });
  });
};

bookController.borrowABook = async (req, res) => {
  await BookModel.toggleBorrow(req.params.id, async (err, results) => {
    if (err) {
      return res.status(500).json({
        success: false,
        error: err.message,
        books: {},
      });
    }

    await BookModel.findOneById(req.params.id, (error, result) => {
      if (err) {
        return res.status(500).json({
          success: false,
          error: error.message,
          books: {},
        });
      }

      return res.status(201).json({
        success: true,
        error: '',
        books: result,
      });
    });
  });
};

// DELETE
bookController.deleteABook = async (req, res) => {
  await BookModel.deleteOne(req.params.id, (err, result) => {
    if (err) {
      return res.status(500).json({
        success: false,
        error: err.message,
        books: {},
      });
    }
    if (!result.affectedRows) {
      return res.status(404).json({
        success: false,
        error: 'No book found',
        books: {},
      });
    }
    return res.status(200).json({
      success: true,
      error: '',
      books: result,
    });
  });
};

bookController.removeAllNotBorrowed = async (req, res) => {
  await BookModel.deleteAllNotBorrowed((err, result) => {
    if (err) {
      return res.status(500).json({
        success: false,
        error: err.message,
        books: {},
      });
    }

    if (!result.affectedRows) {
      return res.status(404).json({
        success: false,
        error: 'No book found',
        books: {},
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
