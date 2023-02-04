
import * as React from 'react';

export default function<T extends HTMLElement> (): React.RefObject<T> {
  const ref = React.createRef<T>();
  React.useEffect(() => {
    if (ref == null) { return; }

    ref?.current?.focus();
  }, [ref]);

  return ref;
};
