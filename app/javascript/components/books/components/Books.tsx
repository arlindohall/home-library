
import React from 'react';
import { Typography } from '@mui/material';

import useBooks from './hooks';
import BookList from './BookList';

export default () => {
  const books = useBooks();

  return (
    <>
      <Typography variant="h2">Books</Typography>
      <BookList books={books}/>
    </>
  );
};
