import 'dart:math';

import 'package:dio/dio.dart';

abstract class ApiService {
  final String _baseLine = 'https://www.googleapis.com/books/v1/';
  Dio dio;
  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var responce = await dio.get('$_baseLine$e');
    return responce.data;
  }
}
