
import React from 'react';
import { createRoot } from 'react-dom/client';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';

import { Books, Book, Scan } from './books';
import { NotFound } from './lib';

// App structure taken from https://blog.dennisokeeffe.com/blog/2022-02-19-rails-7-using-react-with-esbuildom

const App = () => (
  <div>
    <Router>
      <Routes>
        <Route path="/scan" element={<Scan/>}/>
        <Route path="/books/:id" element={<Book/>}/>
        <Route path="/books/scan/:scannedId" element={<Book/>}/>
        <Route path="/books" element={<Books/>}/>
        <Route path="/" element={<Books/>}/>
        <Route path="*" element={<NotFound/>}/>
      </Routes>
    </Router>
  </div>
);

document.addEventListener("DOMContentLoaded", () => {
  const container = document.getElementById('root');
  const root = createRoot(container); // createRoot(container!) if you use TypeScript
  root.render(<App/>);
})
