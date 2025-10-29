import 'dart:convert';

import 'package:crypto/crypto.dart';

import 'acl_management_message.dart';

/// Represents a root DIDComm ACL Management Message.
///
/// This message is used to add DIDs to the mediator's ACL of the did (from).
class AccessListAddMessage extends AclManagementMessage {
  /// Lists of DIDs which shall be added to ACL.
  final List<String> theirDids;

  /// Constructs [AccessListAddMessage].
  /// [id]: Unique message identifier.
  /// [from]: Sender's DID.
  /// [to]: List of recipient DIDs .
  /// [theirDids]: Lists of DIDs which shall be added to ACL.
  /// [expiresTime]: Message expiration time (optional).
  AccessListAddMessage({
    required super.id,
    required super.from,
    required super.to,
    required this.theirDids,
    super.expiresTime,
  }) : super(
          body: {
            'access_list_add': {
              'did_hash': sha256.convert(utf8.encode(from!)).toString(),
              'hashes': theirDids
                  .map((did) => sha256.convert(utf8.encode(did)).toString())
                  .toList(),
            }
          },
        );

  /// Creates a [AccessListAddMessage] from a JSON map.
  ///
  /// [json]: The JSON map representing the message.
  factory AccessListAddMessage.fromJson(Map<String, dynamic> json) {
    final plainTextMessage = AccessListAddMessage.fromJson(json);
    final accessList =
        plainTextMessage.body?['access_list_add'] as Map<String, dynamic>?;

    return AccessListAddMessage(
      id: plainTextMessage.id,
      from: plainTextMessage.from,
      to: plainTextMessage.to,
      theirDids: accessList?['hashes'] as List<String>,
    );
  }
}
