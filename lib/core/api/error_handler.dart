import 'package:dio/dio.dart';
import 'package:movies/app_constants.dart';

enum DataSource {
  success,
  noContent,
  badRequest,
  unauthorized,
  forbidden,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  unknown
}

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handleError(dynamic error) {
    if (error is DioException) {
      failure = _handleDioError(error);
    } else {
      failure = DataSource.unknown.getFailure();
    }
  }

  Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return DataSource.connectTimeout.getFailure();
      case DioExceptionType.sendTimeout:
        return DataSource.sendTimeout.getFailure();
      case DioExceptionType.receiveTimeout:
        return DataSource.receiveTimeout.getFailure();
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case 400:
            return DataSource.badRequest.getFailure();
          case 401:
            return DataSource.unauthorized.getFailure();
          case 403:
            return DataSource.forbidden.getFailure();
          case 404:
            return DataSource.notFound.getFailure();
          case 500:
            return DataSource.internalServerError.getFailure();
          default:
            return DataSource.unknown.getFailure();
        }
      case DioExceptionType.cancel:
        return DataSource.cancel.getFailure();
      case DioExceptionType.unknown:
      case DioExceptionType.badCertificate:
      case DioExceptionType.connectionError:
        return DataSource.unknown.getFailure();
    }
  }
}

class Failure {
  final int code;
  final String message;

  Failure(this.code, this.message);
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.badRequest:
        return Failure(400, "Bad request");
      case DataSource.unauthorized:
        return Failure(401, "Unauthorized request");
      case DataSource.forbidden:
        return Failure(403, "Forbidden request");
      case DataSource.notFound:
        return Failure(404, "Not found");
      case DataSource.internalServerError:
        return Failure(500, "Internal server error");
      case DataSource.connectTimeout:
        return Failure(-1, AppConstants.timeoutErrorMessage);
      case DataSource.cancel:
        return Failure(-1, "Request was cancelled");
      case DataSource.receiveTimeout:
        return Failure(-1, AppConstants.timeoutErrorMessage);
      case DataSource.sendTimeout:
        return Failure(-1, AppConstants.timeoutErrorMessage);
      case DataSource.cacheError:
        return Failure(-1, "Cache error");
      case DataSource.noInternetConnection:
        return Failure(-1, AppConstants.networkErrorMessage);
      case DataSource.unknown:
        return Failure(-1, AppConstants.defaultErrorMessage);
      default:
        return Failure(-1, AppConstants.defaultErrorMessage);
    }
  }
}
