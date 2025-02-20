part of 'fetch_data_book_cubit.dart';

sealed class FetchDataBookState extends Equatable {
  const FetchDataBookState();

  @override
  List<Object> get props => [];
}

final class FetchDataBookInitial extends FetchDataBookState {}

final class FetchDataBookLoading extends FetchDataBookState {}

final class FetchDataBookFailure extends FetchDataBookState {
  final String errMassage;

  const FetchDataBookFailure(this.errMassage);
}

final class FetchDataBookNoresult extends FetchDataBookState {}

final class FetchDataBookSuccess extends FetchDataBookState {
  final List<BookModel> books;

  const FetchDataBookSuccess(this.books);
}
