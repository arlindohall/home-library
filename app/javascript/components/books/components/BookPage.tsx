
import * as React from 'react';
import { useParams } from 'react-router';

export default () => {
  const { id, scannedId } = useParams();

  return <div>{id ?? scannedId}</div>
}
