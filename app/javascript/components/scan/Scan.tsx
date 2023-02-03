
import { TextField, Typography } from '@mui/material';
import * as React from 'react';
import { useNavigate } from 'react-router-dom';

export default () => {
  const navigate = useNavigate();
  const onSubmit = React.useCallback((event) => {
    const text = event.target[0].value;
    navigate(`/scan/${text}`)
  }, []);

  return (
    <>
      <form onSubmit={onSubmit}>
        <Typography variant="h2">Scan</Typography>
        <TextField autoFocus variant="standard"></TextField>
      </form>
    </>
  );
}
