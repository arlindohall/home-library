
import { Card, CardContent, Link, Radio, Typography } from '@mui/material';
import * as React from 'react';

export type GoogleBooksSubcardProps = {
  title: string;
  author: string;
  description: string;
  isbn: string;
  googleBooksLink: string;
  googleBooksApiLink: string;
  index: number;
  select: () => void;
  selected: boolean;
  listenForEnter: (event: React.KeyboardEvent) => void;
}

export default ({
  title,
  author,
  description,
  isbn,
  googleBooksLink,
  googleBooksApiLink,
  select,
  selected,
  listenForEnter,
}: GoogleBooksSubcardProps) => {
  return (
    <>
      <Card onClick={select}>
        <CardContent>
          <Typography variant="body1">
            <Radio onKeyDown={listenForEnter} size="small" onClick={select} checked={selected}/>
            {title}
          </Typography>
          <Typography variant="body2">Author: {author}</Typography>
          <Typography variant="body2">Description: {description}</Typography>
          <Typography variant="body2">ISBN: {isbn}</Typography>
          <Typography variant="body2">Google Books Link: <Link href={googleBooksLink}>{googleBooksLink}</Link></Typography>
          <Typography variant="body2">Google Books API Link: <Link href={googleBooksApiLink}>{googleBooksApiLink}</Link></Typography>
        </CardContent>
      </Card>
    </>
  );
}
