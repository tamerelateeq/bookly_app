import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/model/repos/search_repo.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'fetch_name_book_state.dart';

class FetchNameBookCubit extends Cubit<FetchNameBookState> {
  final SearchRepo searchRepo;
  FetchNameBookCubit(this.searchRepo) : super(FetchNameBookInitial());
  Future<void> fetchNameBook({required String name}) async {
    emit(FeaturedNameBooksLoading());
    var result = await searchRepo.fetchNameBook(name: name);
    result.fold((failure) {
      emit(FeaturedNameBooksFailure(failure.errMassage));
    }, (books) {
      emit(FeaturedNameBooksSuccess(books));
    });
  }
}
