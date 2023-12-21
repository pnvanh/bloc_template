import 'package:bloc_template/app/core/network/api/dio_client.dart';
import 'package:bloc_template/app/core/network/base/base.dart';
import 'package:bloc_template/app/core/network/base/exceptions/exceptions.dart';
import 'package:bloc_template/app/helpers/utils/utils.dart';
import 'package:dio/dio.dart';

enum APIRequestMethod { get, post, put, delete }

class APIService {
  APIService._();

  static final APIService _instance = APIService._();

  Dio get _dioClient => DioClient.tokenClient;

  factory APIService.getInstance() {
    return _instance;
  }

  Future<ApiResponse> request(
      DioBaseRequest request, APIRequestMethod method) async {
    Response response;
    var path = request.path;

    if (request.pathVariable != null) {
      path = '$path/${request.pathVariable}';
    }

    try {
      switch (method) {
        case APIRequestMethod.get:
          response = await _dioClient.get(
            path,
            queryParameters: request.queryParameters,
          );
          break;
        case APIRequestMethod.post:
          response = await _dioClient.post(
            path,
            data: request.object,
            queryParameters: request.queryParameters,
          );
          break;
        case APIRequestMethod.put:
          response = await _dioClient.put(path, data: request.object);
          break;
        case APIRequestMethod.delete:
          response = await _dioClient.delete(path, data: request.object);
          break;
      }

      final responseErrorCode =
          response.data['errorCode'] ?? ErrorCode.none.name;
      final errorCode = ErrorCodeExtension.fromName(responseErrorCode);
      return ApiResponse(
        statusCode: response.statusCode,
        data: response.data[''],
        message: response.data['message'],
        success: response.data['success'],
        errorCode: errorCode,
      );
    } on DioException catch (dioException) {
      BaseException exception = handleDioError(dioException);
      AppLogger.log.e(
        "Throwing error: >>>> $exception : ${exception.message}",
      );
      throw exception;
    } catch (error) {
      AppLogger.log.e("Generic error: >>>> $error");
      throw handleError("$error");
    }
  }
}
