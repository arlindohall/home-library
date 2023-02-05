
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

function transformData(data: any): GoogleBooksData {
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
  const [googleBooksData, setGoogleBooksData] = React.useState<[GoogleBooksData?]>([]);

  React.useEffect(() => {
    if (!scanId) return;

    fetch(`https://www.googleapis.com/books/v1/volumes?q=${scanId}`)
      .then(response => response.json())
      .then(data => data?.items)
      .then(dataList => dataList?.map(transformData))
      .then(setGoogleBooksData);
  }, [scanId]);

  console.log({googleBooksData})

  return googleBooksData;
};
