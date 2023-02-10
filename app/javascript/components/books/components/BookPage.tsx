
import { Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router';
import ErrorPage from '../../lib/ErrorPage';

import NotFound from '../../lib/NotFound';
import BookCard from './BookCard';
import { useBook, useGenres } from './hooks';

export default () => {
  const { id, scannedId } = useParams();

  const [book, bookError] = useBook(id, scannedId);
  const [genres, genreError] = useGenres();

  if (bookError) {
    return <ErrorPage message={bookError}/>;
  }

  if (genreError) {
    return <ErrorPage message={genreError}/>;
  }

  if (!book) {
    return <NotFound message={`Book ${id || scannedId} does not exist`} />;
  }

  const genre = book.genre_id ? genres[book.genre_id] : undefined;

  return (
    <>
      <Typography variant="h1">{book.title}</Typography>
      <BookCard book={book} genre={genre} standalone/>
    </>
  );
}
