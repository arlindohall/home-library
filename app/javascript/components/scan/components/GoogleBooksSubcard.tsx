
import { Card, CardContent, Link, Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router';
import useFocusRef from '../../lib/useFocusRef';
import { GoogleBooksData, useSaveBook } from '../hooks';

export type GoogleBooksSubcardProps = {
  data: GoogleBooksData,
  isDefault: boolean,
}

export default ({
  data,
  isDefault,
}: GoogleBooksSubcardProps) => {
  const saveBook = useSaveBook();

  const { id } = useParams();
  const redirect = React.useCallback(() => {
    window.location.href = '/scan';
  }, []);

  const submit = React.useCallback(() => {
    if (!id) { return; }
    saveBook(data, id, redirect)
  }, [saveBook, id, redirect]);

  const handleEnter = React.useCallback((event) => {
    if (event.key === 'Enter') {
      submit();
    }
  }, [submit]);

  const [ref, focus] = useFocusRef<HTMLDivElement>();
  React.useEffect(() => {
    if (!isDefault) { return; }
    if (!focus) { return; }

    focus();
  }, [isDefault, focus]);

  const { title, author, description, isbn, googleBooksLink, googleBooksApiLink } = data;

  return (
    <>
      <Card ref={ref} onClick={submit} onKeyDown={handleEnter} tabIndex={0}>
        <CardContent>
          <Typography variant="body1">{title}</Typography>
          <Typography variant="body2">Author: {author}</Typography>
          <Typography variant="body2">Description: {description}</Typography>
          <Typography variant="body2">ISBN: {isbn}</Typography>
          <Typography variant="body2" onClick={(e) => {e.stopPropagation()}}>
            Google Books Link: <Link tabIndex={-1} href={googleBooksLink}>{googleBooksLink}</Link>
          </Typography>
          <Typography variant="body2" onClick={(e) => {e.stopPropagation()}}>
            Google Books API Link: <Link tabIndex={-1} href={googleBooksApiLink}>{googleBooksApiLink}</Link>
          </Typography>
        </CardContent>
      </Card>
    </>
  );
}
