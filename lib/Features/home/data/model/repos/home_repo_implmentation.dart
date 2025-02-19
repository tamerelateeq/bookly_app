import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/model/repos/home_repo.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewesetBooks() async {
    // get a get method
    try {
      var data = await apiService.gets(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');
      // List for books
      List<BookModel> books = [];
      // For loop to add items to List
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
  Future<Either<Failures, List<BookModel>>> fetchFeaturesBooks() async {
    try {
      var data = await apiService.gets(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Sex',
      );
      List<BookModel> booksFeaturesList = [];
      for (var item in data['items']) {
        booksFeaturesList.add(
          BookModel.fromJson(item),
        );
      }
      return right(booksFeaturesList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(errMassage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchRelativeBooks(
      {required String category}) async {
    try {
      var data = await apiService.gets(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Sex',
      );
      List<BookModel> booksRelativeList = [];
      for (var item in data["items"]) {
        booksRelativeList.add(
          BookModel.fromJson(item),
        );
      }
      return right(booksRelativeList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(errMassage: e.toString()));
    }
  }
}
