import 'package:bloc_template/app/helpers/constants/logger_constants.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
      printer: PrettyPrinter(
    methodCount: LoggerConstants.loggerMethodCount,
    errorMethodCount: LoggerConstants.loggerErrorMethodCount,
    lineLength: LoggerConstants.loggerLineLength,
    colors: true,
    printEmojis: true,
    printTime: false,
  ));

  static Logger get log => _logger;
}
