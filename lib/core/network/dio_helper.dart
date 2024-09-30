import 'package:dio/dio.dart';

import 'k_apis.dart';

class DioHelper {
  Dio? _dio;

  Dio init() {
    return _dio = Dio(
      BaseOptions(
        baseUrl: KApis.baseUrl,
        receiveTimeout: const Duration(seconds: 60),
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }

  // --------------- Get -------------------//

  Future<Response> getData({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final response = await _dio!.get(
      path,
      queryParameters: queryParameters,
      data: body,
    );
    return response;
  }

  // --------------- Post -------------------//

  Future<Response> postData({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final response = await _dio!.post(
      path,
      queryParameters: queryParameters,
      data: body,
    );
    return response;
  }

  // --------------- Delete -------------------//

  Future<Response> deleteData({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final response = await _dio!.delete(
      path,
      queryParameters: queryParameters,
      data: body,
    );
    return response;
  }

  // --------------- Patch -------------------//

  Future<Response> patchData({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final response = await _dio!.patch(
      path,
      queryParameters: queryParameters,
      data: body,
    );
    return response;
  }

  // --------------- Put -------------------//

  Future<Response> putData({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final response = await _dio!.put(
      path,
      queryParameters: queryParameters,
      data: body,
    );
    return response;
  }
}
