class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);

  void bookInfo() {
    print("Title: $title, Author: $author, Pages: $pages");
  }
}

void main() {
  Book book1 = Book("1984", "George Orwell", 328);
  Book book2 = Book("To Kill a Mockingbird", "Harper Lee", 281);
  Book book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", 180);

  book1.bookInfo();
  book2.bookInfo();
  book3.bookInfo();
}