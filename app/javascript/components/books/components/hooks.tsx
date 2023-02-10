
import { useCallback, useEffect, useState } from 'react';

import { Book, Genre } from '../../lib/types';

export const useBooks = () => {
  const [books, setBooks] = useState<Book[]>([]);
  useEffect(() => {
    fetch('/api/books')
      .then((response) => response.json())
      .then((data) => setBooks(data));
  }, []);
  return books;
}

export function useBook(id?: string, scannedId?: string): Book | null {
  const [book, setBook] = useState<Book | null>(null);

  useEffect(() => {
    if (!id) { return; }
    fetch(`/api/books/${id}`)
      .then(response => response.json())
      .then(response => response.book)
      .then(setBook);
  }, [id, setBook]);
  useEffect(() => {
    if (id || !scannedId) { return; }
    fetch(`/api/books/scan/${scannedId}`)
      .then(response => response.json())
      .then(response => response.book)
      .then(setBook);
  }, [id, scannedId, setBook]);

  return book;
}

export const useGenres = () => {
  const [genres, setGenres] = useState<Genre[]>([]);
  useEffect(() => {
    fetch('/api/genres')
      .then((response) => response.json())
      .then((data) => setGenres(data));
  }, []);

  const genreMap = {};
  genres?.forEach((genre) => {
    genreMap[genre.id] = genre;
  });

  return genreMap;
};
