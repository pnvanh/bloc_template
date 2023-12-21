import 'package:bloc_template/app/core/network/base/error/error_code.dart';

abstract class BaseException implements Exception {
  final String message;
  final ErrorCode errorCode;

  BaseException({this.message = "", this.errorCode = ErrorCode.none});
}
