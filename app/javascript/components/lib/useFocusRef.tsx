
import * as React from 'react';

export default function useFocusRef<T extends HTMLElement>(): [React.RefObject<T>, () => void] {
  const ref = React.createRef<T>();
  const focus = React.useCallback(() => {
    ref?.current?.focus();
  }, [ref]);

  return [ref, focus];
};
