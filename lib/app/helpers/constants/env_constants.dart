import 'package:bloc_template/app/helpers/models/models.dart';
import 'package:bloc_template/app/helpers/utils/app_logger.dart';

class EnvConstants {
  const EnvConstants._();
  static const envKey = 'ENV_KEY';

  static EnvironmentType environmentType = EnvironmentType.values
      .byName(const String.fromEnvironment(envKey, defaultValue: 'dev'));

  static void init() {
    AppLogger.log.d("Environment: $environmentType");
  }
}
