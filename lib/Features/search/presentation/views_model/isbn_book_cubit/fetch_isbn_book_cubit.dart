import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/model/repos/search_repo.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'fetch_isbn_book_state.dart';

class FetchIsbnBookCubit extends Cubit<FetchIsbnBookState> {
  final SearchRepo searchRepo;
  FetchIsbnBookCubit(this.searchRepo) : super(FetchIsbnBookInitial());
  Future<void> fetchIsbnBook({required String isbn}) async {
    emit(FeaturedIsbnBooksLoading());
    var result = await searchRepo.fetchIsbnBook(isbn: isbn);
    result.fold((failure) {
      emit(FeaturedIsbnBooksFailure(failure.errMassage));
    }, (books) {
      emit(FeaturedIsbnBooksSuccess(books));
    });
  }
}
