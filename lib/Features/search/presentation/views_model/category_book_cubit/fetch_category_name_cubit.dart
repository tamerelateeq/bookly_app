import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/model/repos/search_repo.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'fetch_category_name_state.dart';

class FetchCategoryNameCubit extends Cubit<FetchCategoryNameState> {
  final SearchRepo searchRepo;
  FetchCategoryNameCubit(this.searchRepo) : super(FetchCategoryNameInitial());
  Future<void> fetchCategoryBook({required String category}) async {
    emit(FeaturedCategoryBooksLoading());
    var result = await searchRepo.fetchCategoryBook(category: category);
    result.fold((failure) {
      emit(FeaturedCategoryBooksFailure(failure.errMassage));
    }, (books) {
      emit(FeaturedCategoryBooksSuccess(books));
    });
  }
}
