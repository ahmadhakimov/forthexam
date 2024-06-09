
class Book {
  String title;
  String author;
  Book({required this.title, required this.author});

  void displayDetails() {
    print('Title: $title, Author: $author');
  }
}

class Library {
  String name;
  List<Book> books;

  Library({required this.name, required this.books});

  void addBook(Book book) {
    books.add(book);
    print('Book "${book.title}" added to the library.');
  }

  void removeBook(Book book) {
    books.remove(book);
    print('Book "${book.title}" removed from the library.');
  }

  void displayAllBooks() {
    print('Library: $name');
    print('Books in the library:');
    for (var book in books) {
      book.displayDetails();
    }
  }
}

void main() {
  var book1 = Book(title: '1984', author: 'George Orwell');
  var book2 = Book(title: 'To Kill a Mockingbird', author: 'Harper Lee');
  var book3 = Book(title: 'The Great Gatsby', author: 'F. Scott Fitzgerald');

  var library = Library(name: 'City Library', books: [book1, book2]);
  library.displayAllBooks();
  library.addBook(book3);
  library.displayAllBooks();
  library.removeBook(book1);
  library.displayAllBooks();
}