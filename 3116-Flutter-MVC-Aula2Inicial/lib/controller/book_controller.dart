import 'package:grimorio/dao/book_database.dart';
import 'package:grimorio/models/personal_book.dart';

import '../models/google_book.dart';

class BookController {
  final _personalBookDatabase = PersonalBookDatabase();

  void addBook(GoogleBook googleBook, String dayStarted, String dayFinished,
      String comments) {
    PersonalBook newPersonalBook = PersonalBook(
      googleBook: googleBook,
      dayStarted: dayStarted,
      dayFinished: dayFinished,
      comments: comments,
    );

    _personalBookDatabase.save(newPersonalBook);
  }

  Future<List<PersonalBook>> getPersonalBooks() {
    return _personalBookDatabase.findAll();
  }

  void updateBook(PersonalBook personalBook) {
    _personalBookDatabase.save(personalBook);
  }

  void deleteBook(PersonalBook personalBook) {
    _personalBookDatabase.delete(personalBook);
  }
}
