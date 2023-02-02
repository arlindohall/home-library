
import { useEffect, useState } from 'react';

import Book from './Book';
import Genre from '../../genres/Genre';

export const useBooks = () => {
  const [books, setBooks] = useState<Book[]>([]);
  useEffect(() => {
    fetch('/api/books')
      .then((response) => response.json())
      .then((data) => setBooks(data));
  }, []);
  return books;
}

export const useGenres = () => {
  const [genres, setGenres] = useState<Genre[]>([]);
  useEffect(() => {
    fetch('/api/genres')
      .then((response) => response.json())
      .then((data) => setGenres(data));
  }, []);

  const genreMap = {};
  genres.forEach((genre) => {
    genreMap[genre.id] = genre;
  });

  return genreMap;
};
