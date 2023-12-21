enum ErrorCode {
  E9999,
  none,
}

extension ErrorCodeExtension on ErrorCode {
  static ErrorCode fromName(String value) {
    try {
      final errorCode = ErrorCode.values.byName(value);
      return errorCode;
    } catch (error) {
      return ErrorCode.none;
    }
  }
}

extension ErrorCodeDetailExt on ErrorCode {
  // Params Error
  bool get isParamsError {
    return this == ErrorCode.E9999;
  }
}
