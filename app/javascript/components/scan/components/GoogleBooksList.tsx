
import { Stack } from '@mui/material';
import * as React from 'react';
import GoogleBooksSubcard from './GoogleBooksSubcard';

export default ({googleBooksData}) => {
  let index = 0;
  return (
    <>
      <Stack spacing={2}>
        {googleBooksData.map((data) => <GoogleBooksSubcard key={`google-book-subcard-${index++}`} {...data}/>)}
      </Stack>
    </>
  );
}
