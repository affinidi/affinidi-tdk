import 'dart:convert';

import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('BaseInstanceMessage', () {
    test('should generate correct URI for mediator instance', () {
      final message = DestroyInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
      );

      expect(
        message.type.toString(),
        'affinidi.io/operations/ama/destroyMediatorInstance',
      );
    });

    test('should preserve all constructor parameters', () {
      final now = DateTime.now();
      final expires = now.add(const Duration(hours: 1));
      final body = {'key': 'value'};
      const threadId = 'thread-123';

      final message = DestroyInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        from: 'did:example:bob',
        createdTime: now,
        expiresTime: expires,
        body: body,
        threadId: threadId,
      );

      expect(message.id, 'test-id');
      expect(message.to, ['did:example:alice']);
      expect(message.from, 'did:example:bob');
      expect(message.createdTime, now);
      expect(message.expiresTime, expires);
      expect(message.body, body);
      expect(message.threadId, threadId);
    });

    test('should handle empty body by default', () {
      final message = DestroyInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
      );

      expect(message.body, isEmpty);
    });
  });

  group('BaseInstanceResponseMessage', () {
    test('should parse valid response correctly', () {
      final responseData = {'message': 'Success'};
      final body = {
        'response': jsonEncode(responseData),
        'status_code': 200,
        'headers': null,
      };

      final responseMessage = DestroyMediatorInstanceResponseMessage(
        id: 'response-id',
        from: 'did:example:service',
        to: ['did:example:alice'],
        body: body,
      );

      expect(responseMessage.response.message, 'Success');
    });

    test('should parse response when response field is already a Map', () {
      final responseData = {'message': 'Success'};
      final bodyWithMapResponse = {
        'response': responseData,
        'status_code': 200,
        'headers': null,
      };

      final responseMessage = DestroyMediatorInstanceResponseMessage(
        id: 'response-id',
        from: 'did:example:service',
        to: ['did:example:alice'],
        body: bodyWithMapResponse,
      );

      expect(responseMessage.response.message, 'Success');
    });

    test('should throw FormatException for invalid JSON in response', () {
      final invalidBody = {
        'response': 'invalid json {',
        'status_code': 200,
        'headers': null,
      };

      final responseMessage = DestroyMediatorInstanceResponseMessage(
        id: 'response-id',
        from: 'did:example:service',
        to: ['did:example:alice'],
        body: invalidBody,
      );

      expect(
        () => responseMessage.response,
        throwsA(isA<FormatException>()),
      );
    });

    test('should throw TypeError for missing required fields', () {
      final body = {
        'response': jsonEncode({'wrong_field': 'value'}),
        'status_code': 200,
        'headers': null,
      };

      final responseMessage = DestroyMediatorInstanceResponseMessage(
        id: 'response-id',
        from: 'did:example:service',
        to: ['did:example:alice'],
        body: body,
      );

      expect(responseMessage.response.message, isNull);
    });

    test('should handle null body', () {
      final responseMessage = DestroyMediatorInstanceResponseMessage(
        id: 'response-id',
        from: 'did:example:service',
        to: ['did:example:alice'],
        body: null,
      );

      expect(
        () => responseMessage.response,
        throwsA(isA<TypeError>()),
      );
    });

    test('should generate correct response URI', () {
      final responseMessage = DestroyMediatorInstanceResponseMessage(
        id: 'response-id',
        from: 'did:example:service',
        to: ['did:example:alice'],
      );

      expect(
        responseMessage.type.toString(),
        'affinidi.io/operations/ama/destroyMediatorInstance/response',
      );
    });

    test('should preserve all constructor parameters', () {
      final now = DateTime.now();
      final expires = now.add(const Duration(hours: 1));
      const threadId = 'thread-123';
      final body = {'key': 'value'};

      final responseMessage = DestroyMediatorInstanceResponseMessage(
        id: 'response-id',
        from: 'did:example:service',
        to: ['did:example:alice'],
        createdTime: now,
        expiresTime: expires,
        threadId: threadId,
        body: body,
      );

      expect(responseMessage.id, 'response-id');
      expect(responseMessage.from, 'did:example:service');
      expect(responseMessage.to, ['did:example:alice']);
      expect(responseMessage.createdTime, now);
      expect(responseMessage.expiresTime, expires);
      expect(responseMessage.threadId, threadId);
      expect(responseMessage.body, body);
    });
  });
}
