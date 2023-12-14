import 'package:get/get_connect.dart';
import 'package:demo/core/network/ApiContanst.dart';
import 'package:demo/core/network/interceptors/RequestInterceptor.dart';
import 'package:demo/core/network/interceptors/ResponseInterceptor.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}