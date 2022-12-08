
import 'package:dio/dio.dart';
import 'package:demo/core/app_extension.dart';
import 'package:logger/logger.dart';

class DioInterceptor extends Interceptor {

  final Logger logger = Logger(printer: PrettyPrinter(
    methodCount: 0,
    printTime: false
  ),);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i('====================START====================');
    logger.i('http method => ${options.method}');
    logger.i('request => ${options.baseUrl}${options.path}${options.queryParameters.format}');
    logger.i('Header => ${options.headers}');
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final options = err.requestOptions;
    logger.e(options.method);//debug log
    logger.e('error: ${err.error}, message: ${err.message}');//error log
    return super.onError(err, handler);
  }
  
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d('response => StatusCode: ${response.statusCode}');
    logger.d('Response => body: ${response.data}');
    return super.onResponse(response, handler);
  }
}