import 'package:affinidi_tdk_claim_verifiable_credential/src/exceptions/tdk_exception_type.dart';
import 'package:affinidi_tdk_claim_verifiable_credential/src/extensions/dio_exception_extension.dart';
import 'package:affinidi_tdk_test_utilities/affinidi_tdk_test_utilities.dart';
import 'package:test/test.dart';

void main() {
  group('When receiving a connectivity error with SocketException', () {
    final variants = [
      'Bad file descriptor',
      'Connection reset by peer',
      'Invalid argument',
      'No address associated with hostname',
      'Operation timed out',
    ];

    for (final variant in variants) {
      group('and the error is \'$variant\'', () {
        test('it converts to a network error', () {
          final exception =
              DioExceptionFixtures.socketExceptionWithMessage(message: variant);

          expect(exception.asTdkException()?.code,
              TdkExceptionType.networkError.code);
        });
      });
    }
  });

  group('When receiving a connectivity error with HttpException', () {
    final variants = [
      'Bad file descriptor',
      'Can\'t assign requested address',
      'Connection closed before full header was received',
      'Connection closed while receiving data',
      'Connection reset by peer',
      'Connection timed out',
      'Operation timed out',
      'Read failed',
      'Software caused connection abort',
      'Write failed',
    ];

    for (final variant in variants) {
      group('and the error is \'$variant\'', () {
        test('it converts to a network error', () {
          final exception =
              DioExceptionFixtures.httpExceptionWithMessage(message: variant);

          expect(exception.asTdkException()?.code,
              TdkExceptionType.networkError.code);
        });
      });
    }
  });

  group('When receiving a connectivity error with a status code 504', () {
    test('it converts to a network error', () {
      final exception = DioExceptionFixtures.withStatusCode(504,
          url: 'http://example.affinidi.com');

      expect(
          exception.asTdkException()?.code, TdkExceptionType.networkError.code);
    });
  });

  group('When receiving a server error', () {
    test('it converts to a server error', () {
      final exception = DioExceptionFixtures.withStatusCode(500,
          url: 'http://example.affinidi.com');

      expect(
          exception.asTdkException()?.code, TdkExceptionType.serverError.code);
    });
  });
}
