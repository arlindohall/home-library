
import { useEffect, useState } from 'react';

import Book from './Book';

export default () => {
  const [books, setBooks] = useState<Book[]>([]);
  useEffect(() => {
    fetch('/api/books')
      .then((response) => response.json())
      .then((data) => setBooks(data));
  }, []);
  return books;
}
