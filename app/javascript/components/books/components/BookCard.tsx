
import { Card, CardContent, Link, Typography } from '@mui/material';
import React from 'react';
import Genre from '../../genres/Genre';
import Book from './Book';

type BookParams = {
  book: Book;
  genre?: Genre;
}

export default ({book, genre}: BookParams) => {
  const genreContent = genre ? (
    <Link href={`/genres/${genre.id}`}>{genre.name}</Link>
  ) : null;

  return (
    <Card>
      <CardContent>
        <Typography variant="body1">{book.title}</Typography>
        {genreContent}
      </CardContent>
    </Card>
  );
};
