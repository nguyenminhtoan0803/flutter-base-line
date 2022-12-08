import 'package:dio/dio.dart';

import 'package:demo/common/resources/Strings.dart';

class DioException implements Exception {
  late String message;

  DioException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = Strings.cancelRequest;
        break;
      case DioErrorType.connectTimeout:
        message = Strings.connectionTimeOut;
        break;
      case DioErrorType.receiveTimeout:
        message = Strings.receiveTimeOut;
        break;
      case DioErrorType.response:
        message = _handlerError(
            dioError.response?.statusCode, dioError.response?.data);
        break;
      case DioErrorType.sendTimeout:
        if (dioError.message.contains("Socket")) {
          message = Strings.socketException;
          break;
        }
        message = Strings.unexpectedError;
        break;
      default:
        message = Strings.unknownError;
        break;
    }
  }

  String _handlerError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return Strings.badRequest;
      case 401:
        return Strings.unauthorized;
      case 403:
        return Strings.forbidden;
      case 422:
        return Strings.duplicateEmail;
      case 500:
        return Strings.internalServerError;
      case 502:
        return Strings.badGateway;
      default:
        return Strings.unknownError;
    }
  }

  @override
  String toString() => message;
}
