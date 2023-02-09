
import { Stack } from '@mui/material';
import React from 'react';

import BookCard from './BookCard';
import { Book } from '../../lib/types';

export default ({books, genres}) => {
  return (
    <Stack spacing={1}>
      {books?.map((book: Book) => <BookCard key={book.id}
                                            book={book}
                                            genre={book.genre_id && genres[book.genre_id]}/>)}
    </Stack>
  );
}
