import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failures, List<BookModel>>> fetchNameBook(
      {required String name});
  Future<Either<Failures, List<BookModel>>> fetchCategoryBook(
      {required String category});
  Future<Either<Failures, List<BookModel>>> fetchIsbnBook(
      {required String isbn});
  Future<Either<Failures, List<BookModel>>> fetchAuthorBook(
      {required String author});
}
