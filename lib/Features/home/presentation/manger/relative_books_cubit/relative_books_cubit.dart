import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/model/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'relative_books_state.dart';

class RelativeBooksCubit extends Cubit<RelativeBooksState> {
  RelativeBooksCubit(this.homeRepo) : super(RelativeBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchRelativeBooks(String category) async {
    emit(RelativeBooksLoading());
    var result = await homeRepo.fetchRelativeBooks(category: category);
    result.fold(
      (failure) {
        emit(RelativeBooksFailure(failure.errMassage));
      },
      (books) {
        emit(RelativeBooksSuccess(books));
      },
    );
  }
}
