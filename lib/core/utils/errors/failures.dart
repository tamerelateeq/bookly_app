import 'package:dio/dio.dart';

abstract class Failures {
  final String errMassage;

  Failures({required this.errMassage});
}

class ServerFailures extends Failures {
  ServerFailures({required super.errMassage});

  factory ServerFailures.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailures(errMassage: 'Connection Timeout wuth Api server');
      case DioExceptionType.sendTimeout:
        return ServerFailures(errMassage: 'Send Timeout wuth Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailures(errMassage: 'Receive Timeout wuth Api server');
      case DioExceptionType.badCertificate:
        return ServerFailures(errMassage: 'Connection Timeout wuth Api server');
      case DioExceptionType.badResponse:
        return ServerFailures.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailures(errMassage: 'Request is Cancel');
      case DioExceptionType.connectionError:
        return ServerFailures(
            errMassage: 'Connection  is erorr, please try again later');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailures(errMassage: 'No Internet Connection');
        }
        return ServerFailures(errMassage: 'Unexpected Error,Please try again!');
    }
  }

  factory ServerFailures.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 402 ||
        statusCode == 403) {
      return ServerFailures(errMassage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailures(
          errMassage: 'Your request not found , please try again later');
    } else if (statusCode == 500) {
      return ServerFailures(
          errMassage: 'Internet server , please try again later');
    } else {
      return ServerFailures(errMassage: 'Oops , please try again later');
    }
  }
}
