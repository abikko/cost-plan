import 'package:cost_plan/data/base/base_http_client.dart';
import 'package:cost_plan/internal/provider_graph.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

base class BaseRemoteRepoImpl {
  late final BaseHttpClient _client;

  BaseHttpClient get client => _client;

  BaseRemoteRepoImpl(Ref ref) {
    _client = ref.read(ProviderGraph.httpClientProvider);
  }
}
