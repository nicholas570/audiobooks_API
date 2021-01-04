module.exports = {
  SELECT_ALL_BOOKS: 'SELECT * FROM book',
  SELECT_ALL_BOOKS_SORTED_BY_YEAR:
    'SELECT * FROM book ORDER BY released_year ASC',
  SELECT_WHERE_ID: 'SELECT * FROM book WHERE id = ?',
  SELECT_ALL_STARTING_BY: 'SELECT * FROM book WHERE title LIKE ?',
  SELECT_ALL_RELEASED_AFTER: 'SELECT * FROM book WHERE released_year > ?',
  INSERT_A_BOOK: 'INSERT INTO book SET ?',
  UPDATE_A_BOOK: 'UPDATE book SET ? WHERE id = ?',
  TOGGLE_A_BOOK: 'UPDATE book SET is_borrowed = 1 - is_borrowed WHERE id = ?',
  DELETE_A_BOOK: 'DELETE FROM book WHERE id = ?',
  DELETE_ALL_NOT_BORROWED_BOOKS: 'DELETE FROM book WHERE is_borrowed = 0',
};
