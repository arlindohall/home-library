
import { Typography } from '@mui/material';
import React from 'react';

export default ({message}) => (
  <>
    <Typography variant="h2">Not Found</Typography>
    <Typography variant="body1">{message ?? `Resource ${document.location.pathname} does not exist`}</Typography>
  </>
);
