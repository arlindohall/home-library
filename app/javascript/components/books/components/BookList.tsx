
import { Stack } from '@mui/material';
import React from 'react';

import Book from './Book';
import BookCard from './BookCard';

export default ({books, genres}) => {
  return (
    <Stack spacing={1}>
      {books.map((book: Book) => <BookCard key={book.id} book={book} genre={genres[book.genre_id]}/>)}
    </Stack>
  );
}
