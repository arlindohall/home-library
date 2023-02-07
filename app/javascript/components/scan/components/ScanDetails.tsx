
import { Box, Button, Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router-dom';
import { useGoogleBooksData } from '../hooks';
import GoogleBooksList from './GoogleBooksList';

export default () => {
  const { id } = useParams();
  const googleBooksData = useGoogleBooksData(id);

  const scanAgain = React.useCallback(() => {
    alert('scan again, implement me')
  }, []);

  const googleBooksList = googleBooksData ? (
    <Box sx={{marginTop: '10px'}}>
      <GoogleBooksList googleBooksData={googleBooksData}/>
    </Box>
  ) : null;

  return (
    <>
      <Box>
        <Typography variant="h2">Scan Details</Typography>
        <Typography variant="body1">
          The scanned identifier is {id}.
          If one of the below books is correct, click it to save the book information and scan again.
          Otherwise, select one of the options at the bottom of the page.
          You may also use "Tab" and "Enter" to select the correct book and submit your choice.
        </Typography>
        {googleBooksList ?? null}
        <Button sx={{marginTop: '10px'}} variant="outlined" onClick={scanAgain}>Scan Again</Button>
      </Box>
    </>
  );
}
