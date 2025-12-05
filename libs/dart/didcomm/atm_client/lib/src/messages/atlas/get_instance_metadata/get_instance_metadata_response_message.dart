import '../../../models/mediator_instance_metadata/mediator_instance_metadata.dart';
import '../../../models/mpx_instance_metadata/mpx_instance_metadata.dart';
import '../../../models/tr_instance_metadata/tr_instance_metadata.dart';
import '../base_messages/base_response_message.dart';

/// Response message for get instance metadata operation - generic for all service types.
class GetInstanceMetadataResponseMessage<T> extends BaseResponseMessage<T> {
  /// Creates a get instance metadata response message.
  GetInstanceMetadataResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    required super.operationName,
    required super.fromJson,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  });

  /// Gets the instance metadata from the response.
  T get metadata => response;
}

/// Response message for get mediator instance metadata operation.
/// Returns MediatorInstanceMetadata according to OpenAPI spec GetMediatorInstanceMetadataOK response.
class GetMediatorInstanceMetadataResponseMessage
    extends GetInstanceMetadataResponseMessage<MediatorInstanceMetadata> {
  /// Creates a get mediator instance metadata response message.
  GetMediatorInstanceMetadataResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getMediatorInstanceMetadata',
          fromJson: MediatorInstanceMetadata.fromJson,
        );
}

/// Response message for get MPX instance metadata operation.
/// Returns MpxInstanceMetadata according to OpenAPI spec GetMpxInstanceMetadataOK response.
class GetMpxInstanceMetadataResponseMessage
    extends GetInstanceMetadataResponseMessage<MpxInstanceMetadata> {
  /// Creates a get MPX instance metadata response message.
  GetMpxInstanceMetadataResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getMpxInstanceMetadata',
          fromJson: MpxInstanceMetadata.fromJson,
        );
}

/// Response message for get Trust Registry instance metadata operation.
/// Returns TrInstanceMetadata according to OpenAPI spec GetTrInstanceMetadataOK response.
class GetTrInstanceMetadataResponseMessage
    extends GetInstanceMetadataResponseMessage<TrInstanceMetadata> {
  /// Creates a get Trust Registry instance metadata response message.
  GetTrInstanceMetadataResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getTrInstanceMetadata',
          fromJson: TrInstanceMetadata.fromJson,
        );
}
