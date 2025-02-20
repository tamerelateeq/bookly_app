import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/model/repos/search_repo.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'fetch_author_book_state.dart';

class FetchAuthorBookCubit extends Cubit<FetchAuthorBookState> {
  final SearchRepo searchRepo;
  FetchAuthorBookCubit(this.searchRepo) : super(FetchAuthorBookInitial());
  Future<void> fetchAuthorBook({required String author}) async {
    emit(FeaturedAuthorBooksLoading());
    var result = await searchRepo.fetchAuthorBook(author: author);
    result.fold((failure) {
      emit(FeaturedAuthorBooksFailure(failure.errMassage));
    }, (books) {
      emit(FeaturedAuthorBooksSuccess(books));
    });
  }
}
