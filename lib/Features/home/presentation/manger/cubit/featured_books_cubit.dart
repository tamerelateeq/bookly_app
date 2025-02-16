import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/model/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  // add repo
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    // access fetch fetaure books from repo & store it in result
    var result = await homeRepo.fetchFeaturesBooks();
    // fold is function to get two condation
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMassage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
