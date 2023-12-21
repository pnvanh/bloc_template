import 'package:bloc_template/app/core/network/base/base.dart';
import 'package:bloc_template/app/helpers/helpers.dart';
import 'package:dio/dio.dart';

class DioClient {
  static final String baseUrl = UrlConstants.appApiBaseUrl;
  static final Dio _instance = Dio(_options);

  static final BaseOptions _options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: NetworkConstants.connectTimeout),
    receiveTimeout: const Duration(seconds: NetworkConstants.receiveTimeout),
  );

  static final _prettyDioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: EnvConstants.environmentType == EnvironmentType.dev,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: NetworkConstants.loggerLineWidth,
  );

  static _addInterceptors() {
    _instance.interceptors.clear();
    _instance.interceptors.add(_prettyDioLogger);

    // TODOs: Add interceptors here
  }

  static Dio get tokenClient {
    _addInterceptors();
    // TODOs: Will update with Refresh Token interceptor in future
    // _instance.options.headers = {"Authorization": "Bearer token"};
    return _instance;
  }

  static String _buildContentType(String version) {
    return "user_defined_content_type+$version";
  }

  DioClient.setContentType(String version) {
    _instance.options.contentType = _buildContentType(version);
  }

  DioClient.setContentTypeApplicationJson() {
    _instance.options.contentType = "application/json";
  }
}
