import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/model/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'neweset_books_state.dart';

class NewesetBooksCubit extends Cubit<NewesetBooksState> {
  NewesetBooksCubit(this.homeRepo) : super(NewesetBooksInitial());
  final HomeRepo homeRepo;
  Future<void> newesetBooks() async {
    emit(NewesetBooksLoading());
    var result = await homeRepo.fetchNewesetBooks();
    result.fold((failures) {
      emit(NewesetBooksFailure(failures.errMassage));
    }, (books) {
      emit(NewesetBooksSuccess(books));
    });
  }
}
