class StringUtils {
  StringUtils._();

  factory StringUtils.getInstance() {
    return _instance;
  }

  static final StringUtils _instance = StringUtils._();
}
