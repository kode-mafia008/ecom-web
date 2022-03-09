//exception handling
  import 'package:dio/dio.dart';

import '../http_exception/http_exception.dart';

HttpException onDioError(DioError error) {
    return HttpException.error(
      errorCode: error.response?.statusCode,
      errorDescription: error.response?.statusMessage,
    );
  }

  HttpException onRequestError(Object error) {
    return HttpException.noInfo(
      message: error.toString(),
    );
  }