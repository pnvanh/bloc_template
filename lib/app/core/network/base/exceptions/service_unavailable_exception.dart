import 'dart:io';

import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';

class ServiceUnavailableException extends BaseApiException {
  ServiceUnavailableException(String message)
      : super(
            httpCode: HttpStatus.serviceUnavailable,
            message: message,
            status: "");
}
