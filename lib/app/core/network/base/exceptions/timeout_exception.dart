import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';

class TimeoutException extends BaseException {
  TimeoutException(String message) : super(message: message);
}
