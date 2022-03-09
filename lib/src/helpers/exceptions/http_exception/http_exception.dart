import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_exception.freezed.dart';

@freezed
class HttpException with _$HttpException {
  const factory HttpException.error({
    int? errorCode,
    String? errorDescription,
  }) = _Error;
  const factory HttpException.noInfo({
    String? message,
  }) = _NoInfo;
}