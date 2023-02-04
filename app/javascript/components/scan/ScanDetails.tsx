
import { Button, Card, CardActions, CardContent, Typography } from '@mui/material';
import * as React from 'react';
import { useParams } from 'react-router-dom';
import useFocusRef from '../lib/useFocusRef';

export default () => {
  const ref = useFocusRef<HTMLButtonElement>();
  const { id } = useParams();

  const onClick = React.useCallback(() => {
    window.location.href = '/scan';
  }, []);

  return (
    <>
      <Typography variant="h2">Scan Details</Typography>
      <Card>
        <CardContent>
          <Typography variant="body1">Scan ID: {id}</Typography>
        </CardContent>
        <CardActions>
          <Button variant="contained" ref={ref} onClick={onClick}>Scan Again</Button>
        </CardActions>
      </Card>
    </>
  );
}
