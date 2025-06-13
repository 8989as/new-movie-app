import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:movies/app_constants.dart';
import 'package:movies/core/api/error_handler.dart';

class ApiClient {
  final Dio _dio;
  final String baseUrl = AppConstants.baseUrl;
  final String apiKey = AppConstants.apiKey;

  ApiClient() : _dio = Dio() {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = AppConstants.connectionTimeout;
    _dio.options.receiveTimeout = AppConstants.receiveTimeout;
    _dio.options.responseType = ResponseType.json;

    // Adding logging interceptor for debugging
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ));
    }
  }

  // GET request method
  Future<dynamic> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final params = {
        'api_key': apiKey,
        ...?queryParameters,
      };

      final response = await _dio.get(
        endpoint,
        queryParameters: params,
        options: options,
      );

      return response.data;
    } on DioException catch (e) {
      throw ErrorHandler.handleError(e);
    } catch (error) {
      throw ErrorHandler.handleError(error);
    }
  }

  // POST request method
  Future<dynamic> post(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final params = {
        'api_key': apiKey,
        ...?queryParameters,
      };

      final response = await _dio.post(
        endpoint,
        data: data,
        queryParameters: params,
        options: options,
      );

      return response.data;
    } on DioException catch (e) {
      throw ErrorHandler.handleError(e);
    } catch (error) {
      throw ErrorHandler.handleError(error);
    }
  }

  // PUT request method
  Future<dynamic> put(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final params = {
        'api_key': apiKey,
        ...?queryParameters,
      };

      final response = await _dio.put(
        endpoint,
        data: data,
        queryParameters: params,
        options: options,
      );

      return response.data;
    } on DioException catch (e) {
      throw ErrorHandler.handleError(e);
    } catch (error) {
      throw ErrorHandler.handleError(error);
    }
  }

  // DELETE request method
  Future<dynamic> delete(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final params = {
        'api_key': apiKey,
        ...?queryParameters,
      };

      final response = await _dio.delete(
        endpoint,
        data: data,
        queryParameters: params,
        options: options,
      );

      return response.data;
    } on DioException catch (e) {
      throw ErrorHandler.handleError(e);
    } catch (error) {
      throw ErrorHandler.handleError(error);
    }
  }
}
