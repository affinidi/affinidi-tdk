import 'package:didcomm/didcomm.dart';

/// Represents a root DIDComm ACL Management Message.
///
/// This message is used as a parent to all ACL Management messages.
abstract class AclManagementMessage extends PlainTextMessage {
  /// Constructs [AclManagementMessage].
  /// [id]: Unique message identifier.
  /// [from]: Sender's DID.
  /// [to]: List of recipient DIDs.
  /// [body]: Message body.
  /// [expiresTime]: Message expiration time (optional).
  AclManagementMessage({
    required super.id,
    required super.from,
    required super.to,
    required super.body,
    super.expiresTime,
  }) : super(
          type: Uri.parse('https://didcomm.org/mediator/1.0/acl-management'),
        );
}
