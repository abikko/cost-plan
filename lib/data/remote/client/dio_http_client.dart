import 'package:cost_plan/data/base/base_http_client.dart';
import 'package:cost_plan/data/base/http_response.dart';
import 'package:dio/dio.dart';

import '../../../core/data/remote/http_request_type.dart';

class DioHttpClient extends BaseHttpClient {
  late final Dio _client;
  DioHttpClient(this._client);

  @override
  Future<HttpResponse> executeHttpRequest({
    required String path,
    required HttpRequestType httpRequestType,
    Map<String, dynamic>? body,
    Map<String, dynamic>? additionalHeader,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await handleHttpRequest(
      path: path,
      httpRequestType: httpRequestType,
      body: body,
      additionalHeader: additionalHeader,
      queryParameters: queryParameters,
    );

    return HttpResponse.fromJson(response.data);
  }

  Future<Response> handleHttpRequest({
    required String path,
    required HttpRequestType httpRequestType,
    Map<String, dynamic>? body,
    Map<String, dynamic>? additionalHeader,
    Map<String, dynamic>? queryParameters,
  }) =>
      switch (httpRequestType) {
        HttpRequestType.delete => _client.delete(
            path,
            data: body,
            queryParameters: queryParameters,
          ),
        HttpRequestType.get => _client.get(
            path,
            data: body,
            queryParameters: queryParameters,
          ),
        HttpRequestType.patch => _client.patch(
            path,
            data: body,
            queryParameters: queryParameters,
          ),
        HttpRequestType.post => _client.post(
            path,
            data: body,
            queryParameters: queryParameters,
          ),
        HttpRequestType.put => _client.put(
            path,
            data: body,
            queryParameters: queryParameters,
          ),
      };
}
