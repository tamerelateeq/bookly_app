import 'package:bookly_app/Features/home/data/model/repos/home_repo_implmentation.dart';
import 'package:bookly_app/Features/search/data/model/repos/search_repo_impl.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocated() {
  // api service
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  // Home Repo
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  // search repo
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
