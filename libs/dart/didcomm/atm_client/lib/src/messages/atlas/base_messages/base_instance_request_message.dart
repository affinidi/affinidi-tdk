import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';

/// Base class for instance operation messages.
abstract class BaseInstanceRequestMessage extends PlainTextMessage {
  /// Base URI for instance operations.
  static String baseInstanceOperationsUri = 'affinidi.io/operations/ama';

  /// Creates a base instance message.
  ///
  /// [operationName] is the name of the operation.
  BaseInstanceRequestMessage({
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
