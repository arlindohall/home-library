
import { Stack } from '@mui/material';
import * as React from 'react';
import { GoogleBooksData } from '../hooks';
import GoogleBooksSubcard from './GoogleBooksSubcard';

export type GoogleBooksListProps = {
  handleEnterPressed: (event: React.KeyboardEvent) => void;
  googleBooksData: [GoogleBooksData] | [];
  selectedBookIndex: number | null;
  selectBookByIndex: (index: number) => void;
};

export default ({
  handleEnterPressed,
  googleBooksData,
  selectedBookIndex,
  selectBookByIndex
}: GoogleBooksListProps) => {
  return (
    <>
      <Stack spacing={2}>
        {googleBooksData.map((data) =>
          <GoogleBooksSubcard
            key={`google-book-subcard-${data.index}`}
            select={() => selectBookByIndex(data.index)}
            selected={selectedBookIndex === data.index}
            listenForEnter={handleEnterPressed}
            {...data}/>
        )}
      </Stack>
    </>
  );
}
