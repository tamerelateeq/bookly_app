import 'package:bookly_app/Features/search/data/model/repos/search_repo.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchAuthorBook(
      {required String author}) async {
    try {
      var data = await apiService.gets(
          endPoint:
              'volumes?Filtering=free-ebooks&sorting=relevance&q=inauthor:$author');
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(errMassage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchCategoryBook(
      {required String category}) async {
    try {
      var data = await apiService.gets(
          endPoint:
              'volumes?Filtering=free-ebooks&sorting=relevance&q=subject:$category');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(errMassage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchIsbnBook(
      {required String isbn}) async {
    try {
      var data = await apiService.gets(
          endPoint:
              'volumes?Filtering=free-ebooks&sorting=relevance&q=isbn:$isbn');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(errMassage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchNameBook(
      {required String name}) async {
    try {
      var data = await apiService.gets(
          endPoint:
              'volumes?Filtering=free-ebooks&sorting=relevance&q=intitle:$name');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(errMassage: e.toString()));
    }
  }
}
