import 'package:bloc_template/app/configs/initializer_config.dart';
import 'package:bloc_template/app/helpers/helpers.dart';

class AppConfig extends ApplicationConfig {
  factory AppConfig.getInstance() {
    return _instance;
  }

  AppConfig._();

  static final AppConfig _instance = AppConfig._();

  @override
  Future<void> config() async {
    EnvConstants.init();
    await AppInfo.getInstance().init();
  }
}
