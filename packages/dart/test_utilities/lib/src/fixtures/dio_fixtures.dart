import 'package:dio/dio.dart';

/// Provides factory methods for creating Dio instances.
class DioFixtures {
  /// Creates a Dio instance with custom status validation.
  ///
  /// [validateStatus] - validation status
  static Dio clientWithValidateStatus({bool validateStatus = true}) =>
      Dio(BaseOptions(validateStatus: (status) => validateStatus));

  /// A default Dio instance.
  static final client = Dio();
}
