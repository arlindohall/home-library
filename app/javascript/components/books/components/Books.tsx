
import React from 'react';
import { Button, Box, Typography } from '@mui/material';

import { useBooks, useGenres } from './hooks';
import BookList from './BookList';
import ErrorPage from '../../lib/ErrorPage';

export default () => {
  const [books, bookError] = useBooks();
  const [genres, genreError] = useGenres();
  const onClick = React.useCallback(() => {
    window.location.href = '/scan';
  }, []);

  if (bookError) {
    return <ErrorPage message={bookError}/>;
  }

  if (genreError) {
    return <ErrorPage message={genreError}/>;
  }

  return (
    <>
      <Box>
        <Typography variant="h2">Books</Typography>
        <BookList books={books} genres={genres}/>
      </Box>
      <Box sx={{marginTop: '10px'}}>
        <Button variant="contained" onClick={onClick}>Scan</Button>
      </Box>
    </>
  );
};
