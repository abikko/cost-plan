import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/data/remote/http_error.dart';

part 'http_response.g.dart';

///Consider, we have HTTP Response like this:
///{
///  "data": {data},
///  "code": int,
///  "error": {
///               "message": string,
///               "code": string,
///            } nullable
///}
@JsonSerializable()
class HttpResponse {
  final Map<String, dynamic> data;
  final int code;
  final HttpError? error;

  const HttpResponse(this.data, this.code, this.error);

  factory HttpResponse.fromJson(Map<String, dynamic> json) =>
      _$HttpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HttpResponseToJson(this);
}
