
class Book {
  String title;
  String author;
  Book({required this.title, required this.author});
  void display() {
    print('Title: $title, Author: $author');
  }
}

Book? gb;

void ds() {
  var localBook = Book(title: '1924', author: 'Wanda Nisteroi');
  localBook.display();
  gb = Book(title: 'the life of pe', author: 'Jok Shirak');
}

void main() {
  ds();
  if (gb != null) {
    print('information global:');
    gb!.display();
  }
}