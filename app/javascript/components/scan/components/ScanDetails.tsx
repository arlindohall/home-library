
import { Box, Button, Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router-dom';
import useFocusRef from '../../lib/useFocusRef';
import { useGoogleBooksData, useSaveBook } from '../hooks';
import GoogleBooksList from './GoogleBooksList';

export default () => {
  const { id } = useParams();
  const googleBooksData = useGoogleBooksData(id);
  const [ref, focus] = useFocusRef<HTMLButtonElement>();
  const saveBook = useSaveBook();

  const scanAgain = React.useCallback(() => {
    alert('scan again, implement me')
  }, []);

  const saveAndScanAgain = React.useCallback(() => {
    if (!googleBooksData) { return; }
    if (googleBooksData.length === 0) { return; }

    saveBook(googleBooksData[0]);
  }, [googleBooksData]);

  React.useEffect(() => {
    if (!focus) { return; }
    focus();
  }, [focus]);

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
          If one of the below books is correct, click it to save the book information
          and scan again. Otherwise, select one of the options at the bottom of the page.
          You may also press "Enter" when the page loads to submit the first option.
        </Typography>
        {googleBooksList ?? null}
        <Button ref={ref} sx={{marginTop: '10px', marginRight: '10px'}} variant="contained" onClick={saveAndScanAgain}>
          Save and Scan Again
        </Button>
        <Button sx={{marginTop: '10px'}} variant="outlined" onClick={scanAgain}>Scan Again</Button>
      </Box>
    </>
  );
}
