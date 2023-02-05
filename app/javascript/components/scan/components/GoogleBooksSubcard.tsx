
import { Card, CardContent, Typography } from '@mui/material';
import * as React from 'react';

export type GoogleBooksSubcardProps = {
  title: string;
  author: string;
  description: string;
  isbn: string;
  googleBooksLink: string;
  googleBooksApiLink: string;
}

export default ({
  title,
  author,
  description,
  isbn,
  googleBooksLink,
  googleBooksApiLink,
}: GoogleBooksSubcardProps) => {
  return (
  <>
    <Card>
      <CardContent>
        <Typography variant="body1">{title}</Typography>
        <Typography variant="body2">Author: {author}</Typography>
        <Typography variant="body2">Description: {description}</Typography>
        <Typography variant="body2">ISBN: {isbn}</Typography>
        <Typography variant="body2">Google Books Link: {googleBooksLink}</Typography>
        <Typography variant="body2">Google Books API Link: {googleBooksApiLink}</Typography>
      </CardContent>
    </Card>
  </>
  );
}
