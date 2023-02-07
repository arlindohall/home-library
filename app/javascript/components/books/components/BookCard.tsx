
import { Card, CardContent, Link, Typography } from '@mui/material';
import React from 'react';
import { Book, Genre } from '../../lib/types';

type BookParams = {
  book: Book;
  genre?: Genre;
  showTitle?: boolean;
}

export default ({book, genre, showTitle=true}: BookParams) => {
  const genreContent = genre ? (
    <Typography variant="body2">
      Genre: <Link onClick={(e) => e.stopPropagation()} href={`/genres/${genre.id}`}>{genre.name}</Link>
    </Typography>
  ) : null;

  const onClick = React.useCallback(() => {
    window.location.href = `/books/${book.id}`;
  }, [])

  return (
    <Card onClick={onClick}>
      <CardContent>
        {
          showTitle && (
            <Typography variant="body1">
              Title: <Link href={`/books/${book.id}`}>{book.title}</Link>
            </Typography>
          )
        }
        <Typography variant="body2">Author: {book.author}</Typography>
        {book.description && <Typography variant="body2">Description: {book.description}</Typography>}
        <Typography variant="body2">ISBN: {book.isbn}</Typography>
        <Typography variant="body2">Scanned Identifier: {book.scanned_identifier}</Typography>
        <Typography variant="body2">
          Google Books Link: <Link href={book.google_books_link}>{book.google_books_link}</Link>
        </Typography>
        <Typography variant="body2">
          Google Books API Link: <Link href={book.google_books_api_link}>{book.google_books_api_link}</Link>
        </Typography>
        {genreContent}
      </CardContent>
    </Card>
  );
};
