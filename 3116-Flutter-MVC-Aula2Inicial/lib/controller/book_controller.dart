import 'package:grimorio/dao/book_database.dart';
import 'package:grimorio/models/personal_book.dart';

import '../models/google_book.dart';

class BookController {

  PersonalBookDatabase _personalBookDatabase = PersonalBookDatabase();

  void addBook(GoogleBook googleBook, String dayStarted, String dayFinished, String comments) {

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
}
