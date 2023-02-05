
import { TextField, Typography } from '@mui/material';
import * as React from 'react';

export default () => {
  const [formContent, setFormContent] = React.useState('');
  const onChange = React.useCallback((event) => {
    setFormContent(event.target.value)
  }, [setFormContent]);
  const onKeyPress = React.useCallback((event) => {
    if (event.key === 'Enter') {
      window.location.href = `/scan/${formContent}`;
    }
  }, [formContent]);

  return (
    <>
      <Typography variant="h2">Scan</Typography>
      <TextField onKeyPress={onKeyPress} autoFocus placeholder="Scan barcode" onChange={onChange}/>
    </>
  );
}
