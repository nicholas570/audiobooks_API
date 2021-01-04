const express = require('express');
const bookController = require('../controllers/bookController');

const router = express.Router();

router.get('/books', bookController.getAll);
router.get('/books-sorted/', bookController.getAllSorted);
router.get('/books/:id', bookController.getOneById);
router.get('/books-starting-by', bookController.getAllStartingBy);
router.get('/books-released-after', bookController.getAllReleasedAfter);

router.post('/books', bookController.addABook);

router.put('/books/:id', bookController.modifyABook);
router.put('/books/:id/is-borrowed', bookController.borrowABook);

router.delete('/books/:id', bookController.deleteABook);
router.delete('/books/', bookController.removeAllNotBorrowed);

module.exports = router;
