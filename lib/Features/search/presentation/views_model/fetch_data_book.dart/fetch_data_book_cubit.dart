import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/model/repos/search_repo.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

import 'package:equatable/equatable.dart';

part 'fetch_data_book_state.dart';

class FetchDataBookCubit extends Cubit<FetchDataBookState> {
  final SearchRepo searchRepo;
  FetchDataBookCubit(this.searchRepo) : super(FetchDataBookInitial());
  String? initialdata;
  String? initialsearchData;

  void fetchSearchData(data) {
    initialsearchData = data;
    fetchDataBook(
      searchData: initialsearchData,
    );
  }

  void fetchTypeData(value) {
    initialdata = value;
    fetchDataBook(data: initialdata);
  }

  final List<BookModel> books = [];
  Future<void> fetchDataBook({String? data, String? searchData}) async {
    data = initialdata;
    searchData = initialsearchData;
    if (searchData == null || searchData.isEmpty) {
      emit(FetchDataBookNoresult());
    } else {
      emit(FetchDataBookLoading());

      Either<Failures, List<BookModel>> result;

      switch (data) {
        case "subject:":
          result = await searchRepo.fetchCategoryBook(category: searchData);
          break;
        case "inauthor:":
          result = await searchRepo.fetchAuthorBook(author: searchData);
          break;
        case "isbn:":
          result = await searchRepo.fetchIsbnBook(isbn: searchData);
          break;
        default:
          result = await searchRepo.fetchNameBook(name: searchData);
      }

      result.fold(
        (failure) => emit(FetchDataBookFailure(failure.errMassage)),
        (books) => emit(FetchDataBookSuccess(books)),
      );
    }
  }
}
