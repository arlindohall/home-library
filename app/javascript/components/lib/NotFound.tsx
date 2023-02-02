
import { Typography } from '@mui/material';
import React from 'react';

type NotFoundParams = {
  message?: string;
}

export default (notFound: NotFoundParams) => (
  <>
    <Typography variant="h2">Not Found</Typography>
    <Typography variant="body1">{notFound.message ?? `Resource ${document.location.pathname} does not exist`}</Typography>
  </>
);
