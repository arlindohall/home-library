
import { Stack } from '@mui/material';
import React from 'react';

import BookCard from './BookCard';

export default ({books}) => {
  return (
    <Stack spacing={1}>
      {books.map((book) => <BookCard key={book.id} book={book}/>)}
    </Stack>
  );
}
