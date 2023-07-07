import 'package:cost_plan/data/base/base_http_client.dart';

base class BaseRemoteRepoImpl {
  late final BaseHttpClient _client;

  BaseHttpClient get client => _client;

  BaseRemoteRepoImpl(this._client);
}
