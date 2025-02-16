part of 'neweset_books_cubit.dart';

sealed class NewesetBooksState extends Equatable {
  const NewesetBooksState();

  @override
  List<Object> get props => [];
}

final class NewesetBooksInitial extends NewesetBooksState {}

final class NewesetBooksLoading extends NewesetBooksState {}

final class NewesetBooksFailure extends NewesetBooksState {
  final String errMassage;

  const NewesetBooksFailure(this.errMassage);
}

final class NewesetBooksSuccess extends NewesetBooksState {
  final List<BookModel> books;

  const NewesetBooksSuccess(this.books);
}
