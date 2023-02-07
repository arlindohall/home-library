
import { Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router';

import NotFound from '../../lib/NotFound';
import { Book } from '../../lib/types';
import BookCard from './BookCard';
import { useBook, useGenres } from './hooks';

export default () => {
  const { id, scannedId } = useParams();

  const book = useBook(id, scannedId);
  const genres = useGenres();

  if (!book) {
    return <NotFound message={`Book ${id || scannedId} does not exist`} />;
  }

  const genre = book.genre_id ? genres[book.genre_id] : undefined;

  return (
    <>
      <Typography variant="h1">{book.title}</Typography>
      <BookCard book={book} genre={genre} showTitle={false}/>
    </>
  );
}
