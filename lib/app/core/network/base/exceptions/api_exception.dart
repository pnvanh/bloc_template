import 'package:bloc_template/app/core/network/base/base.dart';
import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';

class ApiException extends BaseApiException {
  ApiException({
    required int httpCode,
    required String status,
    String message = "",
    ErrorCode errorCode = ErrorCode.none,
  }) : super(
            httpCode: httpCode,
            status: status,
            message: message,
            errorCode: errorCode);
}
