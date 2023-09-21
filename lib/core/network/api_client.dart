import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://devapi.wtfup.me/'));

  static final ApiClient _singleton = ApiClient._internal();
  factory ApiClient() {
    _singleton._dio.interceptors.add(PrettyDioLogger(requestBody: true));
    return _singleton;
  }
  ApiClient._internal();

  Future<Response> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      final responseData = response;
      return responseData;
    } on DioException catch (_) {
      rethrow;
    }
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response =
          await _dio.post(path, data: data, queryParameters: queryParameters);
      final responseData = response;
      return responseData;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
