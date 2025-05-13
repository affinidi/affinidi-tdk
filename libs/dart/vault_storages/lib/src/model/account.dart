import 'dart:io';

import 'package:pubspec_parse/pubspec_parse.dart';

/// Retrieves the version of the pubspec file.
String getPubspecVersion() {
  final pubspec = File('pubspec.yaml').readAsStringSync();
  final parsed = Pubspec.parse(pubspec);

  return parsed.version.toString();
}

/// Stores DEKEK information used for securing data in the vault.
class DekekInfo {
  /// The encrypted DEKEK value
  final String encryptedDekek;

  /// The version of the DEKEK
  final String version;

  /// Creates a new DEKEK info instance.
  DekekInfo._(this.encryptedDekek, this.version);

  factory DekekInfo({required String encryptedDekek}) {
    var version = getPubspecVersion();
    return DekekInfo._(encryptedDekek, version);
  }

  /// Creates a [DekekInfo] from a JSON map.
  DekekInfo.fromJson(Map<String, dynamic> json)
      : encryptedDekek = json['encryptedDekek'] as String,
        version = json['version'] as String;

  /// Converts this [DekekInfo] to a JSON map.
  Map<String, Object> toJson() {
    return {'version': version, 'encryptedDekek': encryptedDekek};
  }
}

/// Metadata associated with an account.
class AccountMetadata {
  /// The version of the metadata
  final String version;

  /// List of shared storage data entries
  final List<SharedStorageData> sharedStorageData;

  /// Information about the DEKEK
  final DekekInfo dekekInfo;

  /// Creates a new account metadata instance.
  AccountMetadata._({
    required this.sharedStorageData,
    required this.dekekInfo,
    required this.version,
  });

  /// Factory constructor to create an [AccountMetadata] with a version.
  factory AccountMetadata({
    required List<SharedStorageData> sharedStorageData,
    required DekekInfo dekekInfo,
  }) {
    return AccountMetadata._(
      sharedStorageData: sharedStorageData,
      dekekInfo: dekekInfo,
      version: getPubspecVersion(),
    );
  }

  /// Creates an [AccountMetadata] from a JSON map.
  AccountMetadata.fromJson(Map<String, dynamic> json)
      : sharedStorageData = (json['sharedStorageData'] as List<dynamic>)
            .map((e) => SharedStorageData.fromJson(e as Map<String, dynamic>))
            .toList(),
        version = json['version'] as String,
        dekekInfo =
            DekekInfo.fromJson(json['dekekInfo'] as Map<String, dynamic>);

  /// Converts this [AccountMetadata] to a JSON map.
  Map<String, Object> toJson() {
    return {
      'sharedStorageData': sharedStorageData.map((e) => e.toJson()).toList(),
      'version': version,
      'dekekInfo': dekekInfo.toJson(),
    };
  }
}

/// Data about a shared storage instance.
class SharedStorageData {
  /// Path to the shared storage node
  final String nodePath;

  /// Encrypted DEKEK for the shared storage
  final String encryptedDekek;

  /// DID of the profile that shared the storage
  final String profileDid;

  /// Creates a new shared storage data instance.
  SharedStorageData({
    required this.nodePath,
    required this.encryptedDekek,
    required this.profileDid,
  });

  /// Creates a [SharedStorageData] from a JSON map.
  SharedStorageData.fromJson(Map<String, dynamic> json)
      : nodePath = json['nodePath'] as String,
        encryptedDekek = json['encryptedDekek'] as String,
        profileDid = json['profileDid'] as String;

  /// Converts this [SharedStorageData] to a JSON map.
  Map<String, Object> toJson() {
    return {
      'nodePath': nodePath,
      'encryptedDekek': encryptedDekek,
      'profileDid': profileDid,
    };
  }
}

/// Represents an account in the system.
class Account {
  /// account identifier
  final int accountIndex;

  /// DID associated with profile
  final String accountDid;

  /// metadata associated with account, used to store dekek & path to the profile that has been shared
  final AccountMetadata? accountMetadata;

  /// Creates a new account instance.
  Account({
    required this.accountIndex,
    required this.accountDid,
    this.accountMetadata,
  });

  /// Checks if this account has any shared storage data.
  bool get hasSharedStorageData =>
      accountMetadata?.sharedStorageData.isNotEmpty ?? false;

  /// Creates an [Account] from a JSON map.
  Account.fromJson(Map<String, dynamic> json)
      : accountIndex = json['accountIndex'] as int,
        accountDid = json['accountDid'] as String,
        accountMetadata =
            AccountMetadata.fromJson(json['metadata'] as Map<String, dynamic>);

  /// Converts this [Account] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'accountIndex': accountIndex,
      'accountDid': accountDid,
      'metadata': accountMetadata?.toJson(),
    };
  }
}
