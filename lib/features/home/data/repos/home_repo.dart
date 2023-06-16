import 'package:dartz/dartz.dart';
import 'package:easy_book/core/errors/failures.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  //Recommanded for you book
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();

  // popular books
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
