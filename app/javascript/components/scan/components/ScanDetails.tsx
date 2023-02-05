
import { Button, Card, CardActions, CardContent, Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router-dom';
import useFocusRef from '../../lib/useFocusRef';
import { useGoogleBooksData } from '../hooks';
import GoogleBooksList from './GoogleBooksList';

export default () => {
  const ref = useFocusRef<HTMLButtonElement>();
  const { id } = useParams();
  const googleBooksData = useGoogleBooksData(id);

  const googleBooksSubcard = googleBooksData ? (
    <GoogleBooksList googleBooksData={googleBooksData} />
  ) : null;

  const onClick = React.useCallback(() => {
    window.location.href = '/scan';
  }, []);

  return (
    <>
      <Typography variant="h2">Scan Details</Typography>
      <Typography variant="body1">Scan ID: {id}</Typography>
      {googleBooksSubcard ?? null}
      <Button sx={{marginTop: '10px'}} variant="contained" ref={ref} onClick={onClick}>Scan Again</Button>
    </>
  );
}
