// ignore_for_file: public_member_api_docs, sort_constructors_first

// 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 List, Set, Map 등의 컬렉션에 넣어도 동일 객체로 판단한다.
// Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
// deep copy 를 지원한다

class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;
  Book({
    required this.title,
    required this.comment,
  });

  @override
  bool operator ==(covariant Book other) {
    if (identical(this, other)) return true;

    return other.title == title;
  }

  @override
  int get hashCode => title.hashCode;

  @override
  String toString() => 'Book(title: $title, comment: $comment)';

  Book copyWith({
    String? title,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
    );
  }
}

void main() {
  Book book1 = Book(title: '제목1', comment: '코멘트1');
  Book book2 = Book(title: '제목1', comment: '코멘트2');
  Book book3 = Book(title: '제목3', comment: '코멘트3');
  Book book4 = Book(title: '제목4', comment: '코멘트4');
  Book book5 = Book(title: '제목5', comment: '코멘트5');
  book4.publishDate = DateTime(DateTime.july);
  book5.publishDate = DateTime(DateTime.june);

  print('제목과 출간일이 같으면 true 아니면 false');
  print(book1 == book2);
  print(book1 == book3);

  List<Book> books = [];
  books.add(book1);
  books.add(book2);
  books.add(book3);
  books.add(book4);
  books.add(book5);

  print('리스트안에 넣어도 위와 동일하게 작동');
  print(books[0] == books[1]);

  print('리스트에 추가한 순서');
  print(books);

  print('출간일기준으로 정렬순서변경');
  books.sort((a, b) => a.publishDate.compareTo(b.publishDate));
  print(books);
}
