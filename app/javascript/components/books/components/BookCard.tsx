
import { Card, CardContent, Link, Typography } from '@mui/material';
import React from 'react';
import { Book, Genre } from '../../lib/types';

type BookParams = {
  book: Book;
  genre?: Genre;
  standalone?: boolean;
}

const stopPropagation = (e: React.MouseEvent) => {
  e.stopPropagation();
};

const noop = () => {};

export default ({book, genre, standalone=false}: BookParams) => {
  const genreContent = genre ? (
    <Typography variant="body2">
      Genre: <Link onClick={stopPropagation} href={`/genres/${genre.id}`}>{genre.name}</Link>
    </Typography>
  ) : null;

  const onClick = React.useCallback(() => {
    window.location.href = `/books/${book.id}`;
  }, [])

  return (
    <Card onClick={standalone ? noop : onClick}>
      <CardContent>
        {
          standalone ? null : (
            <Typography variant="body1">
              Title: <Link href={`/books/${book.id}`}>{book.title}</Link>
            </Typography>
          )
        }
        <Typography variant="body2">Author: {book.author}</Typography>
        {book.description && <Typography variant="body2">Description: {book.description}</Typography>}
        <Typography onClick={stopPropagation} variant="body2">ISBN: {book.isbn}</Typography>
        <Typography onClick={stopPropagation} variant="body2">Scanned Identifier: {book.scanned_identifier}</Typography>
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
