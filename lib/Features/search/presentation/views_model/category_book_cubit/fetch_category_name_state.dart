part of 'fetch_category_name_cubit.dart';

sealed class FetchCategoryNameState extends Equatable {
  const FetchCategoryNameState();

  @override
  List<Object> get props => [];
}

final class FetchCategoryNameInitial extends FetchCategoryNameState {}

final class FeaturedCategoryBooksLoading extends FetchCategoryNameState {}

final class FeaturedCategoryBooksFailure extends FetchCategoryNameState {
  final String errMassage;

  const FeaturedCategoryBooksFailure(this.errMassage);
}

final class FeaturedCategoryBooksSuccess extends FetchCategoryNameState {
  final List<BookModel> books;

  const FeaturedCategoryBooksSuccess(this.books);
}
