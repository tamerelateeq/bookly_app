part of 'fetch_isbn_book_cubit.dart';

sealed class FetchIsbnBookState extends Equatable {
  const FetchIsbnBookState();

  @override
  List<Object> get props => [];
}

final class FetchIsbnBookInitial extends FetchIsbnBookState {}

final class FeaturedIsbnBooksLoading extends FetchIsbnBookState {}

final class FeaturedIsbnBooksFailure extends FetchIsbnBookState {
  final String errMassage;

  const FeaturedIsbnBooksFailure(this.errMassage);
}

final class FeaturedIsbnBooksSuccess extends FetchIsbnBookState {
  final List<BookModel> books;

  const FeaturedIsbnBooksSuccess(this.books);
}
