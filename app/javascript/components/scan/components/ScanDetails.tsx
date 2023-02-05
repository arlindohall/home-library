
import { Box, Button, Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router-dom';
import useFocusRef from '../../lib/useFocusRef';
import { useGoogleBooksData } from '../hooks';
import GoogleBooksList from './GoogleBooksList';

export default () => {
  const ref = useFocusRef<HTMLButtonElement>();
  const { id } = useParams();
  const googleBooksData = useGoogleBooksData(id);

  const googleBooksList = googleBooksData ? (
    <Box sx={{marginTop: '10px'}}>
      <GoogleBooksList googleBooksData={googleBooksData} />
    </Box>
  ) : null;

  const onClick = React.useCallback(() => {
    window.location.href = '/scan';
  }, []);

  return (
    <>
      <Typography variant="h2">Scan Details</Typography>
      <Typography variant="body1">
        The scanned identifier is {id}.
        If one of the below books is correct, click it to save the book information
        and scan again. Otherwise, select one of the options at the bottom of the page.
      </Typography>
      {googleBooksList ?? null}
      <Button sx={{marginTop: '10px'}} variant="contained" ref={ref} onClick={onClick}>Scan Again</Button>
    </>
  );
}
