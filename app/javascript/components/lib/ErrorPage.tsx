
import { Typography } from '@mui/material';
import React from 'react';

type NotFoundParams = {
  message?: string;
}

export default (notFound: NotFoundParams) => (
  <>
    <Typography variant="h2">Server error</Typography>
    <Typography variant="body1">{notFound.message ?? `Error fetching ${document.location.pathname}`}</Typography>
  </>
);
