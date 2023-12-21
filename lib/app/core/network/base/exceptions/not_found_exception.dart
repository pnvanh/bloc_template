import 'dart:io';

import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';

class NotFoundException extends ApiException {
  NotFoundException(String message, String status)
      : super(httpCode: HttpStatus.notFound, status: status, message: message);
}
