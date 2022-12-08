import 'package:dio/dio.dart';

import 'package:demo/core/api_config.dart';
import 'package:demo/core/network/dio_interceptor.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  late final Dio? dio;

  factory DioClient() => _instance;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
          baseUrl: ApiConfig.baseUrl,
          headers: ApiConfig.header,
          connectTimeout: ApiConfig.connectionTimeout,
          receiveTimeout: ApiConfig.receiveTimeout,
          responseType: ResponseType.json),
    )..interceptors.add(DioInterceptor());
  }
}