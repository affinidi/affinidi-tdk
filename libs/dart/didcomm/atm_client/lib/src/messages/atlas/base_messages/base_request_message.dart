import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';

/// Base class for instance operation messages.
abstract class BaseRequestMessage extends PlainTextMessage {
  /// Base URI for instance operations.
  static String baseOperationUri = 'affinidi.io/operations/ama';

  /// Creates a base instance message.
  ///
  /// [operationName] is the name of the operation.
  BaseRequestMessage({
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
            '$baseOperationUri/$operationName',
          ),
        );
}
