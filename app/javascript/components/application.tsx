
import React from 'react';
import ReactDOM from 'react-dom';

// App structure taken from https://blog.dennisokeeffe.com/blog/2022-02-19-rails-7-using-react-with-esbuildom

const App = () => {
  return <div>Hello, world!</div>
}

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  ReactDOM.render(<App />, root);
})
