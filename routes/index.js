const express = require('express');
const bookController = require('../controllers/bookController');

const router = express.Router();

router.get('/books', bookController.getAll);
router.get('/books/:id', bookController.getOneById);

module.exports = router;
