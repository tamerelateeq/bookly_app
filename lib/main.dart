import 'package:bookly_app/Features/home/data/model/repos/home_repo_implmentation.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/neweset_books.dart/neweset_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/Features/splash/presentation/Views/splach_view.dart';
import 'package:bookly_app/core/utils/service_located.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocated();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
            create: (context) => NewesetBooksCubit(getIt.get<HomeRepoImpl>()))
      ],
      child: GetMaterialApp(
        routes: {
          'HomeView': (context) => HomeView(),
          'BookDetailsView': (context) => BookDetailsView(),
          'SearchView': (context) => SearchView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // get font type my google by add  pakages google fonts
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        home: SplachView(),
      ),
    );
  }
}
