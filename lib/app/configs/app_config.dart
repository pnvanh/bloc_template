import 'package:bloc_template/app/configs/initializer_config.dart';
import 'package:bloc_template/app/core/constants/app_keys.dart';
import 'package:bloc_template/app/data/datasource/local/secure_storage/app_secure_storage.dart';
import 'package:bloc_template/app/helpers/helpers.dart';
import 'package:encrypt_shared_preferences/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig extends ApplicationConfig {
  factory AppConfig.getInstance() {
    return _instance;
  }

  AppConfig._();

  static final AppConfig _instance = AppConfig._();

  @override
  Future<void> config() async {
    EnvConstants.init();
    await dotenv.load(fileName: ".env");
    await EncryptedSharedPreferences.initialize(
        dotenv.get(AppKeys.encryptPreferenceKey));
    await AppInfo.getInstance().init();
  }
}
