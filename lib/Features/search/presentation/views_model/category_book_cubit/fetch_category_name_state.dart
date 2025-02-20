part of 'fetch_category_name_cubit.dart';

sealed class FetchCategoryBookState extends Equatable {
  const FetchCategoryBookState();

  @override
  List<Object> get props => [];
}

final class FetchCategoryBookInitial extends FetchCategoryBookState {}

final class FeaturedCategoryBooksLoading extends FetchCategoryBookState {}

final class FeaturedCategoryBooksFailure extends FetchCategoryBookState {
  final String errMassage;

  const FeaturedCategoryBooksFailure(this.errMassage);
}

final class FeaturedCategoryBooksSuccess extends FetchCategoryBookState {
  final List<BookModel> books;

  const FeaturedCategoryBooksSuccess(this.books);
}
