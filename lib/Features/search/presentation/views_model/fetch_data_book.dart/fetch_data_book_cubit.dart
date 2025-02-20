import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/model/repos/search_repo.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';

import 'package:equatable/equatable.dart';

part 'fetch_data_book_state.dart';

class FetchDataBookCubit extends Cubit<FetchDataBookState> {
  final SearchRepo searchRepo;
  FetchDataBookCubit(this.searchRepo) : super(FetchDataBookInitial());

  Future<void> fetchDataBook({required String data}) async {
    emit(FetchDataBookLoading());
    if (data == "subject:") {
      await emitMethod(value: data);
    } else if (data == "inauthor:") {
      await emitMethod(value: data);
    } else if (data == "isbn:") {
      await emitMethod(value: data);
    } else {
      await emitMethod(value: "intitle:");
    }
  }

  Future<void> emitMethod({required String value}) async {
    var result = await searchRepo.fetchNameBook(name: value);
    result.fold((failure) {
      emit(FetchDataBookFailure(failure.errMassage));
    }, (books) {
      emit(FetchDataBookSuccess(books));
    });
  }
}
