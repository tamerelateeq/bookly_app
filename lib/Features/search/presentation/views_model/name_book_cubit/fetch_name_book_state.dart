part of 'fetch_name_book_cubit.dart';

sealed class FetchNameBookState extends Equatable {
  const FetchNameBookState();

  @override
  List<Object> get props => [];
}

final class FetchNameBookInitial extends FetchNameBookState {}

final class FeaturedNameBooksLoading extends FetchNameBookState {}

final class FeaturedNameBooksFailure extends FetchNameBookState {
  final String errMassage;

  const FeaturedNameBooksFailure(this.errMassage);
}

final class FeaturedNameBooksSuccess extends FetchNameBookState {
  final List<BookModel> books;

  const FeaturedNameBooksSuccess(this.books);
}
