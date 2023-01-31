
import { Card, CardContent, Typography } from '@mui/material';
import React from 'react';

export default ({book}) => {
  return (
    <Card>
      <CardContent>
        <Typography variant="body1">{book.title}</Typography>
      </CardContent>
    </Card>
  );
};
