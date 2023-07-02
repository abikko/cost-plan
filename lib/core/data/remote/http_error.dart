import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_error.g.dart';

@JsonSerializable()
class HttpError {
  final String message;
  final String code;

  const HttpError(this.message, this.code);

  factory HttpError.fromJson(Map<String, dynamic> json) =>
      _$HttpErrorFromJson(json);

  Map<String, dynamic> toJson() => _$HttpErrorToJson(this);
}
