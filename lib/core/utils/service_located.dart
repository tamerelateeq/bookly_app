import 'package:bookly_app/Features/home/data/model/repos/home_repo.dart';
import 'package:bookly_app/Features/home/data/model/repos/home_repo_implmentation.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void serviceLocated() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}
