import 'dart:convert';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';

import '../../response_body.dart';

/// Base class for instance operation messages.
abstract class BaseInstanceMessage extends PlainTextMessage {
  /// Base URI for instance operations.
  static String baseInstanceOperationsUri = 'affinidi.io/operations/ama';

  /// Creates a base instance message.
  ///
  /// [operationName] is the name of the operation.
  BaseInstanceMessage({
    required super.id,
    required super.to,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
    required String operationName,
  }) : super(
          type: Uri.parse(
            '$baseInstanceOperationsUri/$operationName',
          ),
        );
}

/// Base class for instance operation response messages.
abstract class BaseInstanceResponseMessage<T> extends PlainTextMessage {
  final T Function(Map<String, dynamic>) _fromJson;

  /// Creates a base instance response message.
  ///
  /// [operationName] is the name of the operation.
  BaseInstanceResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
    required String operationName,
    required T Function(Map<String, dynamic>) fromJson,
  })  : _fromJson = fromJson,
        super(
          type: Uri.parse(
            'affinidi.io/operations/ama/$operationName/response',
          ),
        );

  /// Gets the parsed response data from the message body.
  T get response {
    final responseBody = ResponseBody.fromJson(body!);
    final decodedResponse =
        jsonDecode(responseBody.response) as Map<String, dynamic>;

    return _fromJson(decodedResponse);
  }
}
