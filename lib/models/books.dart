import 'package:flutter/material.dart';

import './book.dart';

// Change notifier enables provider package
// to be available for the Books
class Books with ChangeNotifier {
  List<Book> _books = [
    Book(
        bookId: 2767052,
        author: 'Suzanne Collins',
        title: 'The Hunger Games',
        rating: 4.34,
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/I/71WSzS6zvCL.jpg',
        reviews: 155254,
        pages: 365,
        language: 'English',
        desc:
            'The Hunger Games universe is a dystopia set in Panem, a North American country consisting of the wealthy Capitol and 13 districts in varying states of poverty. Every year, children from the first 12 districts are selected via lottery to participate in a compulsory televised battle royale death match called The Hunger Games.',
        price: 12.32),
    Book(
        bookId: 3,
        author: 'J.K. Rowling',
        title: 'Harry Potter and the Philosopher\'s Stone',
        rating: 4.44,
        imageUrl:
            'https://media1.popsugar-assets.com/files/thumbor/-Q9R5WHoEUikdqZWJpl0OL6fo7g/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2013/02/07/3/301/3019466/a7c409363d6d6d9a_harrynew_custom-1fa12c2215710024d4fb570714431f00ca671dc1-s6-c10/i/Harry-Potter-Sorcerer-Stone-USA-15th-Anniversary-Edition.jpg',
        //  'https://i.pinimg.com/originals/8f/8c/68/8f8c6821f2059607e85122c6a38cd11c.jpg',
        reviews: 75867,
        pages: 600,
        language: 'English',
        desc:
            'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry',
        price: 10.12),
    Book(
        bookId: 41865,
        author: 'Stephenie Meyer',
        title: 'Twilight',
        rating: 3.57,
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/I/51CeJ+XZOBL.jpg',
        reviews: 95009,
        pages: 690,
        language: 'English-US',
        desc:
            'Bella Swan moves from Phoenix, Arizona to live with her father in Forks, Washington to allow her mother to travel with her new husband, a minor league baseball player. After moving to Forks, Bella finds herself involuntarily drawn to a mysterious, handsome boy, Edward Cullen and eventually learns that he is a member of a vampire family which drinks animal blood rather than human blood',
        price: 9.99)
  ];

  // a gatter to render the list of books
  List<Book> get books {
    return _books;
  }

  // This function is to find a book by the bookid given
  Book getBookById(int bookId){
    return _books.firstWhere((element) => element.bookId==bookId);
  }
}
