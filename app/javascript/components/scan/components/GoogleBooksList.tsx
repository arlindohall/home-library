
import { Stack } from '@mui/material';
import * as React from 'react';
import { GoogleBooksData } from '../../lib/types';
import GoogleBooksSubcard from './GoogleBooksSubcard';

export type GoogleBooksListProps = {
  googleBooksData: [GoogleBooksData] | [];
};

export default ({
  googleBooksData,
}: GoogleBooksListProps) => {
  return (
    <>
      <Stack spacing={2}>
        {googleBooksData.map((data, index) => <GoogleBooksSubcard key={`google-book-subcard-${index}`}
                                                                  isDefault={index === 0}
                                                                  data={data}/>)}
      </Stack>
    </>
  );
}
