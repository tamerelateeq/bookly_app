import 'package:dio/dio.dart';

abstract class ApiService {
  final String _baseLine = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);
  Future<Map<String, dynamic>> gets({required String endPoint}) async {
    var responce = await _dio.get('$_baseLine$endPoint');
    return responce.data;
  }
}
