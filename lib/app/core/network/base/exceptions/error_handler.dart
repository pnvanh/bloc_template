import 'dart:io';

import 'package:bloc_template/app/core/network/base/base.dart';
import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';
import 'package:bloc_template/app/helpers/utils/utils.dart';
import 'package:dio/dio.dart';

Exception handleError(String error) {
  AppLogger.log.e("Generic exception: $error");

  return AppException(message: error);
}

BaseException handleDioError(DioException exception) {
  switch (exception.type) {
    case DioExceptionType.cancel:
      return AppException(message: "Request to API server was cancelled");
    case DioExceptionType.connectionTimeout:
      return AppException(message: "Connection timeout with API server");
    case DioExceptionType.connectionError:
      return NetworkException("There is no internet connection");
    case DioExceptionType.receiveTimeout:
      return TimeoutException("Receive timeout in connection with API server");
    case DioExceptionType.sendTimeout:
      return TimeoutException("Send timeout in connection with API server");
    case DioExceptionType.badResponse:
      return _parseDioErrorResponse(exception);
    default:
      return UnknownException("Unknown error!");
  }
}

BaseApiException _parseDioErrorResponse(DioException dioException) {
  int statusCode = dioException.response?.statusCode ?? -1;
  String? status;
  String? serverMessage;
  ErrorCode? errorCode;

  try {
    if (statusCode == -1 || statusCode == HttpStatus.ok) {
      statusCode = dioException.response?.data["statusCode"];
    }
    status = dioException.response?.data["error"];
    final messages = dioException.response?.data["message"];
    serverMessage = (messages is List) ? messages.join(",") : messages;
    final serverErrorCode =
        dioException.response?.data["errorCode"] ?? ErrorCode.none.name;
    errorCode = ErrorCodeExtension.fromName(serverErrorCode);
  } catch (e, s) {
    AppLogger.log.e("$e");
    AppLogger.log.e(s.toString());

    serverMessage = "Something went wrong. Please try again later.";
  }

  switch (statusCode) {
    case HttpStatus.serviceUnavailable:
      return ServiceUnavailableException("Service Temporarily Unavailable");
    case HttpStatus.notFound:
      return NotFoundException(serverMessage ?? "", status ?? "");
    default:
      return ApiException(
        httpCode: statusCode,
        status: status ?? "",
        message: serverMessage ?? "",
        errorCode: errorCode ?? ErrorCode.none,
      );
  }
}
