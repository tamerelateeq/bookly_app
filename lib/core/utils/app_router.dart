import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/bookcontent_details_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/Views/splach_view.dart';
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
        builder: (context, state) => HomeView(),
      ),
      // Book Details View
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BookDetails(),
      ),
      // Search View
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
