import '../../core/data/remote/http_request_type.dart';
import '../../core/data/remote/request_paths.dart';
import 'http_response.dart';

abstract class BaseHttpClient {
  Future<HttpResponse> executeHttpRequest({
    required String path,
    required HttpRequestType httpRequestType,
    Map<String, dynamic>? body,
    Map<String, dynamic>? additionalHeader,
    Map<String, dynamic>? queryParameters,
  });

  bool isAuthorizedRequest(String path) =>
      RequestPaths.authorizedPaths.contains(path);
}
