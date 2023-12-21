import 'package:bloc_template/app/core/constants/app_keys.dart';
import 'package:encrypt_shared_preferences/provider.dart';

class AppEncryptPreference {
  AppEncryptPreference._();

  static final AppEncryptPreference _instance = AppEncryptPreference._();

  factory AppEncryptPreference.getInstance() {
    return _instance;
  }

  final encryptSharedPref = EncryptedSharedPreferences.getInstance();

  Future<bool> setAccessToken(String token) async {
    return encryptSharedPref.setString(AppKeys.accessTokenKey, token);
  }

  String? getAccessToken() {
    return encryptSharedPref.getString(AppKeys.accessTokenKey);
  }

  Future removeAccessToken() async {
    await encryptSharedPref.remove(AppKeys.accessTokenKey);
  }

  Future<bool> setRefreshToken(String token) async {
    return encryptSharedPref.setString(AppKeys.refreshTokenKey, token);
  }

  String? getRefreshToken() {
    return encryptSharedPref.getString(AppKeys.refreshTokenKey);
  }

  Future removeRefreshToken() async {
    await encryptSharedPref.remove(AppKeys.refreshTokenKey);
  }

  Future<bool> setIsAuthenticated(bool isAuthenticated) async {
    return encryptSharedPref.setBoolean(
        AppKeys.isAuthenticatedKey, isAuthenticated);
  }

  String? getIsAuthenticated() {
    return encryptSharedPref.getString(AppKeys.isAuthenticatedKey);
  }

  Future removeIsAuthenticated() async {
    await encryptSharedPref.remove(AppKeys.isAuthenticatedKey);
  }

  Future<bool> clearAll() async {
    return await encryptSharedPref.clear();
  }
}
