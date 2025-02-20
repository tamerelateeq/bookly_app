import 'package:bookly_app/Features/search/data/model/repos/search_repo_impl.dart';
import 'package:bookly_app/Features/search/presentation/views_model/fetch_data_book.dart/fetch_data_book_cubit.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/model/repos/home_repo_implmentation.dart';
import 'package:bookly_app/Features/home/presentation/manger/relative_books_cubit/relative_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/Views/splach_view.dart';
import 'package:bookly_app/core/utils/service_located.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeview = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      // Splach View
      GoRoute(path: '/', builder: (context, state) => SplachView()),
      // Home View
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomeView(),
      ),
      // Book Details View
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => RelativeBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      // Search View
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => FetchDataBookCubit(getIt.get<SearchRepoImpl>()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
