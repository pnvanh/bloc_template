import 'package:bloc_template/app/core/network/base/base.dart';
import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';

class AppException extends BaseException {
  AppException({
    String message = "",
    ErrorCode errorCode = ErrorCode.none,
  }) : super(
          message: message,
          errorCode: errorCode,
        );
}
