
import React from 'react';
import { Typography } from '@mui/material';

import { useBooks, useGenres } from './hooks';
import BookList from './BookList';

export default () => {
  const books = useBooks();
  const genres = useGenres();

  return (
    <>
      <Typography variant="h2">Books</Typography>
      <BookList books={books} genres={genres}/>
    </>
  );
};
