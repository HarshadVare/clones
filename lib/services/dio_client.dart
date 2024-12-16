import 'package:dio/dio.dart';

enum HttpMethod { get, post }

class DioClient {
  ///Singleton instance
  static final DioClient _instance = DioClient._internal();

  ///Dio instance
  late Dio _dio;

  ///factory constructor toreturn the same instance
  factory DioClient() {
    return _instance;
  }
  final _dioOptions = BaseOptions(
      baseUrl: '',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      });

  ///private constructor
  DioClient._internal() {
    _dio = Dio(_dioOptions);
  }

  Future<Response> apiRequestWithDio({
    required String url,
    HttpMethod requestType = HttpMethod.get,
    dynamic requestBody,
    Map<String, dynamic>? queryParameters,
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic>? customHeaders,
  }) async {
    try {
      final options = Options(
        headers: customHeaders,
        responseType: responseType,
      );

      switch (requestType) {
        case HttpMethod.get:
          final response = await _dio.get(url,
              queryParameters: queryParameters, options: options);
          return response;
        case HttpMethod.post:
          final response =
              await _dio.post(url, data: requestBody, options: options);
          return response;
      }
    } on DioException catch (e) {
      rethrow;
    } catch (e) {
      throw Exception('$requestType Request Failed: $e');
    }
  }
}
