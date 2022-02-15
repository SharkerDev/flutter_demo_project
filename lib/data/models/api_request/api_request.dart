import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_request.freezed.dart';

@freezed
class ApiRequest with _$ApiRequest {
  const factory ApiRequest({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) = _ApiRequest;
}
