
import { Card, CardContent, Link, Typography } from '@mui/material';
import * as React from 'react';
import { useSaveBook } from '../hooks';

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
  const saveBook = useSaveBook();
  const submit = React.useCallback(() => {
    saveBook({ title, author, description, isbn, googleBooksLink, googleBooksApiLink })
  }, [saveBook]);

  return (
    <>
      <Card onClick={submit}>
        <CardContent>
          <Typography variant="body1">{title}</Typography>
          <Typography variant="body2">Author: {author}</Typography>
          <Typography variant="body2">Description: {description}</Typography>
          <Typography variant="body2">ISBN: {isbn}</Typography>
          <Typography variant="body2" onClick={(e) => {e.stopPropagation()}}>
            Google Books Link: <Link href={googleBooksLink}>{googleBooksLink}</Link>
          </Typography>
          <Typography variant="body2" onClick={(e) => {e.stopPropagation()}}>
            Google Books API Link: <Link href={googleBooksApiLink}>{googleBooksApiLink}</Link>
          </Typography>
        </CardContent>
      </Card>
    </>
  );
}
