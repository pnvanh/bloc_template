import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';

class UnknownException extends BaseException {
  UnknownException(String message) : super(message: message);
}
