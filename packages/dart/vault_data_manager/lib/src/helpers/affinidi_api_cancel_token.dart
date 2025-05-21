import 'package:dio/dio.dart';

class AffinidiApiCancelToken implements CancelToken {
  final CancelToken _innerToken = CancelToken();

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
