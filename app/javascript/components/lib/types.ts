
export type Result = {
  error?: string;
}

export type GenreList = { genres?: Genre[] } & Result;
export type BookList = { books?: Book[] } & Result;
export type BookResult = { book?: Book } & Result;

export type Genre = {
  id: string;
  name: string;
}

export type Book = {
  id?: string; // Book may not be created, id is not available until then
  genre_id?: string;
  title: string;
  author: string;
  description: string;
  isbn: string;
  google_books_link: string;
  google_books_api_link: string;
  scanned_identifier: string;
};

export type GoogleBooksData = {
  title: string;
  author: string;
  description: string;
  isbn: string;
  googleBooksLink: string;
  googleBooksApiLink: string;
}
