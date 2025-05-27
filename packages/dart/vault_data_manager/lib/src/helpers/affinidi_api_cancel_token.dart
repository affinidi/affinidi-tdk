import 'package:dio/dio.dart';

/// A wrapper around [CancelToken] to provide a custom implementation for Affinidi API.
/// This class allows for cancellation of requests and provides access to the
/// request options and cancellation error.
class AffinidiApiCancelToken implements CancelToken {
  final CancelToken _innerToken = CancelToken();

  /// Creates a new instance of [AffinidiApiCancelToken].
  AffinidiApiCancelToken();

  @override
  RequestOptions? requestOptions;

  @override
  void cancel([Object? reason]) {
    _innerToken.cancel(reason);
  }

  @override
  DioException? get cancelError => _innerToken.cancelError;

  @override
  bool get isCancelled => _innerToken.isCancelled;

  @override
  Future<DioException> get whenCancel => _innerToken.whenCancel;
}
