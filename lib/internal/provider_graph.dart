import 'package:cost_plan/data/base/base_http_client.dart';
import 'package:cost_plan/data/remote/client/dio_http_client.dart';
import 'package:dio/dio.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

part '../core/data/remote/dio_builder.dart';

class ProviderGraph {
  static Provider<Dio> dioProvider = Provider(buildDio);
  static Provider<BaseHttpClient> httpClientProvider = Provider(
    (ref) => DioHttpClient(ref),
  );
}
