part of 'fetch_author_book_cubit.dart';

sealed class FetchAuthorBookState extends Equatable {
  const FetchAuthorBookState();

  @override
  List<Object> get props => [];
}

final class FetchAuthorBookInitial extends FetchAuthorBookState {}

final class FeaturedAuthorBooksLoading extends FetchAuthorBookState {}

final class FeaturedAuthorBooksFailure extends FetchAuthorBookState {
  final String errMassage;

  const FeaturedAuthorBooksFailure(this.errMassage);
}

final class FeaturedAuthorBooksSuccess extends FetchAuthorBookState {
  final List<BookModel> books;

  const FeaturedAuthorBooksSuccess(this.books);
}
