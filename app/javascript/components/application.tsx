
import React from 'react';
import { createRoot } from 'react-dom/client';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';

import { Books, Book } from './books';
import { Scan, ScanDetails } from './scan';
import { NotFound } from './lib';
import { AppBar, Box, IconButton, Toolbar, Typography } from '@mui/material';
import MenuIcon from '@mui/icons-material/Menu';

// App structure taken from https://blog.dennisokeeffe.com/blog/2022-02-19-rails-7-using-react-with-esbuildom

const App = () => (
  <>
    <Box sx={{ flexGrow: 1 }}>
      <AppBar position="static">
        <Toolbar>
          <IconButton
            size="large"
            edge="start"
            color="inherit"
            aria-label="menu"
            sx={{ mr: 2 }}
          >
            <MenuIcon />
          </IconButton>
          <Typography variant="h6" component="div" sx={{ flexGrow: 1 }}>
            Home Library
          </Typography>
          {/* <Button color="inherit">Login</Button> */}
        </Toolbar>
      </AppBar>
    </Box>
    <Router>
      <Routes>
        <Route path="/scan" element={<Scan/>}/>
        <Route path="/scan/:id" element={<ScanDetails/>}/>
        <Route path="/books/:id" element={<Book/>}/>
        <Route path="/books/scan/:scannedId" element={<Book/>}/>
        <Route path="/books" element={<Books/>}/>
        <Route path="/" element={<Books/>}/>
        <Route path="*" element={<NotFound/>}/>
      </Routes>
    </Router>
  </>
);

document.addEventListener("DOMContentLoaded", () => {
  const container = document.getElementById('root');
  const root = createRoot(container); // createRoot(container!) if you use TypeScript
  root.render(<App/>);
})
