import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSecureStorage {
  AppSecureStorage._();

  static final AppSecureStorage _instance = AppSecureStorage._();

  factory AppSecureStorage.getInstance() {
    return _instance;
  }

  final _storage = FlutterSecureStorage();

  Future<void> save(String value, String key) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    String? value = await _storage.read(key: key);
    return value;
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> deleteAll(String key) async {
    await _storage.deleteAll();
  }
}
