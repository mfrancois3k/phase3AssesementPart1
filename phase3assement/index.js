//You are given a book as input. Write a function that takes all the words in the book as an input and returns the frequency of each word. Consider how you will take in the input, what data structures to use, and edge cases other than the given example. Test your function with 3 different inputs other than the example, and show that it works for the edge cases as well.

// Example:

// Input: “Is your favorite car brand BMW? Mine is Toyota.” 

const book = "Is your favorite car brand BMW? Mine is Toyota.";

const bookFrequency = (book, num) => {
  const bookArray = book.split(" ");
  const bookObject = {};
  bookArray.forEach(word => {
    if (bookObject[word]) {
      bookObject[word]++;
    } else {
      bookObject[word] = num;
    }
  });
  return bookObject;
}

bookFrequency(book, 1);
bookFrequency(book, 2);
bookFrequency(book, 3);