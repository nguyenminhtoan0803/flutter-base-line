import 'package:demo/network/BaseProvider.dart';
import 'package:demo/shared/typedef.dart';

class ApiService {
  final BaseProvider _baseProvider;
  ApiService(this._baseProvider);

  /**
   * method get
   */
  Future<JSON> get<T>({
    required String endPoint,
    JSON? query,
    Map<String, String>? headers,
    bool requireAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requireAuthToken ? 'Authorization' : '': '',
    };
    if (headers != null) {
      customHeaders.addAll(headers);
    }
    final response = await _baseProvider.get(
        endPoint,
        headers: customHeaders,
        query: query
    );
    return response.body;
  }

  /**
   * method post
   */
  Future<JSON> post<T>({
    required String endPoint,
    JSON? body,
    JSON? query,
    Map<String, String>? headers,
    bool requireAuthenToken = false,
  }) async {
    var customHeaders = {
      'Accept':'application/json',
      requireAuthenToken ? 'Authorization' : '' : '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.post(
        endPoint,
        body,
        headers: customHeaders,
        query: query
    );
    return response.body;
  }

  /**
   * method put
   */
  Future<JSON> put<T>({
    required String endPoint,
    JSON? body,
    JSON? query,
    Map<String, String>? headers,
    bool requireAuthenToken = false,
  }) async {
    var customHeaders = {
      'Accept':'application/json',
      requireAuthenToken ? 'Authorization' : '' : '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.put(
        endPoint,
        body,
        headers: customHeaders,
        query: query
    );
    return response.body;
  }

  /**
   * method delete
   */
  Future<JSON> delete<T>({
    required String endPoint,
    JSON? body,
    JSON? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization': '' : '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.delete(
        endPoint,
        headers: customHeaders,
        query: query
    );

    return response.body;
  }
}
