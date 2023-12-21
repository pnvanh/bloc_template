import 'package:bloc_template/app/core/network/base/base.dart';
import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';

abstract class BaseApiException extends AppException {
  final int httpCode;
  final String status;

  BaseApiException({
    this.httpCode = -1,
    this.status = "",
    String message = "",
    ErrorCode errorCode = ErrorCode.none,
  }) : super(
          message: message,
          errorCode: errorCode,
        );
}
