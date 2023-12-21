import 'package:bloc_template/app/helpers/constants/env_constants.dart';
import 'package:bloc_template/app/helpers/models/shared_model.dart';

class UrlConstants {
  const UrlConstants._();

  static String get appApiBaseUrl {
    switch (EnvConstants.environmentType) {
      case EnvironmentType.dev:
        return '';
      case EnvironmentType.prod:
        return '';
    }
  }
}
