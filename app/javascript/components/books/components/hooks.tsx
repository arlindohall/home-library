
import { useEffect, useState } from 'react';

import { Book, BookList, BookResult, GenreList } from '../../lib/types';

export const useBooks = (): [Book[]?, string?] => {
  const [books, setBooks] = useState<BookList>({});
  useEffect(() => {
    fetch('/api/books')
      .then((response) => response.json())
      .then((data) => setBooks(data));
  }, []);

  return [books.books, books.error];
}

export function useBook(id?: string, scannedId?: string): [Book?, string?] {
  const [book, setBook] = useState<BookResult>({});

  useEffect(() => {
    if (!id) { return; }
    fetch(`/api/books/${id}`)
      .then(response => response.json())
      .then(setBook);
  }, [id, setBook]);
  useEffect(() => {
    if (id || !scannedId) { return; }
    fetch(`/api/books/scan/${scannedId}`)
      .then(response => response.json())
      .then(setBook);
  }, [id, scannedId, setBook]);

  return [book.book, book.error];
}

export function useGenres(): [any, string?] {
  const [genres, setGenres] = useState<GenreList>({});
  useEffect(() => {
    fetch('/api/genres')
      .then((response) => response.json())
      .then((data) => setGenres(data));
  }, []);

  const genreMap = {};
  genres.genres?.forEach((genre) => {
    genreMap[genre.id] = genre;
  });

  return [genreMap, genres.error];
};
