
import { Box, Button, Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router-dom';
import { useGoogleBooksData, useSaveBook } from '../hooks';
import GoogleBooksList from './GoogleBooksList';

export default () => {
  const { id } = useParams();
  const googleBooksData = useGoogleBooksData(id);
  const saveBook = useSaveBook();

  const [selectedBook, setSelectedBook] = React.useState<number | null>(null);

  const scanAgain = React.useCallback(() => {
    window.location.href = '/scan';
  }, []);

  const saveAndScanAgain = React.useCallback(() => {
    if (selectedBook === null) { return; }
    if (!googleBooksData) { return; }

    saveBook(googleBooksData[selectedBook]);
    window.location.href = '/scan';
  }, [selectedBook, googleBooksData]);

  const handleEnterPressed = React.useCallback((event) => {
    if (event.key != 'Enter') { return; }
    saveAndScanAgain();
  }, [saveAndScanAgain]);

  const googleBooksList = googleBooksData ? (
    <Box sx={{marginTop: '10px'}}>
      <GoogleBooksList
        handleEnterPressed={handleEnterPressed}
        googleBooksData={googleBooksData}
        selectedBookIndex={selectedBook}
        selectBookByIndex={setSelectedBook}/>
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
        </Typography>
        {googleBooksList ?? null}
        <Button sx={{marginTop: '10px', marginRight: '10px'}} variant="contained" onClick={saveAndScanAgain}>
          Save and Scan Again
        </Button>
        <Button sx={{marginTop: '10px'}} variant="outlined" onClick={scanAgain}>Scan Again</Button>
      </Box>
    </>
  );
}
