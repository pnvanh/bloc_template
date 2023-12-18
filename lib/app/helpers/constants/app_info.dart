import 'package:bloc_template/app/helpers/utils/app_logger.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  AppInfo._();

  PackageInfo? _packageInfo;

  factory AppInfo.getInstance() {
    return _instance;
  }

  static final AppInfo _instance = AppInfo._();

  String get appName => _packageInfo?.appName ?? '';
  String get applicationId => _packageInfo?.packageName ?? '';
  String get versionCode => _packageInfo?.buildNumber ?? '';
  String get versionName => _packageInfo?.version ?? '';

  Future<void> init() async {
    _packageInfo = await PackageInfo.fromPlatform();
    AppLogger.log.d("""
    APP_NAME: ${_packageInfo?.appName}
    APPLICATION_ID: ${_packageInfo?.packageName}
    VERSION: ${_packageInfo?.version}""");
  }
}
