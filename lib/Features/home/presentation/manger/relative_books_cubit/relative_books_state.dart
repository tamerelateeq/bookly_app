part of 'relative_books_cubit.dart';

sealed class RelativeBooksState extends Equatable {
  const RelativeBooksState();

  @override
  List<Object> get props => [];
}

final class RelativeBooksInitial extends RelativeBooksState {}

final class RelativeBooksLoading extends RelativeBooksState {}

final class RelativeBooksFailure extends RelativeBooksState {
  final String errMassage;

  const RelativeBooksFailure(this.errMassage);
}

final class RelativeBooksSuccess extends RelativeBooksState {
  final List<BookModel> books;

  const RelativeBooksSuccess(this.books);
}
