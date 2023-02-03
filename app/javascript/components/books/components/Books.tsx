
import React from 'react';
import { Button, Box, Typography } from '@mui/material';

import { useBooks, useGenres } from './hooks';
import BookList from './BookList';

export default () => {
  const books = useBooks();
  const genres = useGenres();
  const onClick = React.useCallback(() => {
    window.location.href = '/scan';
  }, []);

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
