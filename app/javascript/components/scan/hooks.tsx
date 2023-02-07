
import * as React from 'react';

export type GoogleBooksData = {
  title: string;
  author: string;
  description: string;
  isbn: string;
  googleBooksLink: string;
  googleBooksApiLink: string;
}

function isbn(data: any): string {
  // Courtesy of co-pilot
  const isbn10 = data?.volumeInfo?.industryIdentifiers
    ?.find((identifier: any) => identifier.type === 'ISBN_10')?.identifier;
  const isbn13 = data?.volumeInfo?.industryIdentifiers
    ?.find((identifier: any) => identifier.type === 'ISBN_13')?.identifier;

  return isbn10 || isbn13 || '';
}

function transformData(data: any, index: number): GoogleBooksData {
  return {
    title: data?.volumeInfo?.title,
    author: data?.volumeInfo?.authors?.join(', '),
    description: data?.searchInfo?.textSnippet,
    isbn: isbn(data),
    googleBooksLink: data?.volumeInfo?.canonicalVolumeLink,
    googleBooksApiLink: data?.selfLink,
  }
};

export const useGoogleBooksData = (scanId: string | undefined) => {
  const [googleBooksData, setGoogleBooksData] = React.useState<[GoogleBooksData] | []>([]);

  React.useEffect(() => {
    if (!scanId) return;

    fetch(`https://www.googleapis.com/books/v1/volumes?q=${scanId}`)
      .then(response => response.json())
      .then(data => data?.items)
      .then(dataList => dataList?.map(transformData))
      .then(setGoogleBooksData);
  }, [scanId]);

  return googleBooksData;
};

type Book = {
  title: string;
  author: string;
  description: string;
  isbn: string;
  google_books_link: string;
  google_books_api_link: string;
  scanned_identifier: string;
};

export const useSaveBook = () => {
  return React.useCallback((
    book: GoogleBooksData,
    id: string,
    callback?: (b: Book) => void
  ) => {
    const handleResponse = callback ?? (() => {});

    const body = JSON.stringify({
      book: {
        title: book.title,
        author: book.author,
        description: book.description,
        isbn: book.isbn,
        google_books_link: book.googleBooksLink,
        google_books_api_link: book.googleBooksApiLink,
        scanned_identifier: id,
      }
    });

    const headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]')?.getAttribute('content') || '',
    };

    fetch('/api/books', { method: 'POST', headers, body})
      .then(response => response.json())
      .then(handleResponse)
  }, []);
}
