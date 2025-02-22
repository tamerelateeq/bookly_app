import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewesetBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturesBooks();
  Future<Either<Failures, List<BookModel>>> fetchRelativeBooks(
      {required String category});
}
