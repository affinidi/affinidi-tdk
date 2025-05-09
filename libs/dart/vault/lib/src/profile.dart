import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import 'exceptions/tdk_exception_type.dart';
import 'storage_interfaces/credential_storage.dart';
import 'storage_interfaces/file_storage.dart';
import 'storage_interfaces/shared_storage.dart';

/// Represents a user profile.
class Profile {
  /// Creates a new instance of [Profile].
  ///
  /// [id] - Unique identifier for the profile
  /// [accountIndex] - Index of the account
  /// [name] - Name of the profile
  /// [did] - Decentralized identifier
  /// [description] - Optional description of the profile
  /// [profilePictureURI] - Optional URI to the profile picture
  /// [profileRepositoryId] - ID of the profile repository
  /// [fileStorages] - Map of file storage repositories
  /// [credentialStorages] - Map of credential storage repositories
  /// [sharedStorages] - Map of shared storage repositories
  Profile({
    required this.id,
    required this.accountIndex,
    required this.name,
    required this.did,
    this.description,
    this.profilePictureURI,
    required this.profileRepositoryId,
    required Map<String, FileStorage> fileStorages,
    required Map<String, CredentialStorage> credentialStorages,
    required Map<String, SharedStorage> sharedStorages,
  })  : _fileStorages = Map.unmodifiable(fileStorages),
        _credentialStorages = Map.unmodifiable(credentialStorages),
        _sharedStorages = sharedStorages;

  /// ID of the profile repository
  final String profileRepositoryId;

  /// Profile name
  String name;

  /// Profile description
  String? description;

  /// Profile image URI
  String? profilePictureURI;

  /// Profile accountIndex
  final int accountIndex;

  /// Profile id
  final String id;

  final Map<String, FileStorage> _fileStorages;
  final Map<String, SharedStorage> _sharedStorages;

  /// Retrieves the list of available file repositories
  Map<String, FileStorage> get fileStorages {
    return _fileStorages;
  }

  String? _defaultFileStorageId;

  /// Allows setting the default file repository
  /// Throws:
  /// - [TdkException] if the the value does not match the identifier of an existing file repository.
  ///     - invalid_file_storage_identifier: when it cannot find a fle repository identifier.
  set defaultFileStorageId(String value) {
    if (!fileStorages.containsKey(value)) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'File storage with id $value does not exist',
            code: TdkExceptionType.invalidFileStorageIdentifier.code),
        StackTrace.current,
      );
    }
    _defaultFileStorageId = value;
  }

  /// Retrieves the default file repository
  /// Returns null when there are no file repositories availble
  FileStorage? get defaultFileStorage {
    if (_defaultFileStorageId != null) {
      return fileStorages[_defaultFileStorageId]!;
    }

    return fileStorages.entries.firstOrNull?.value;
  }

  final Map<String, CredentialStorage> _credentialStorages;

  /// Retrieves the list of available credential repositories
  Map<String, CredentialStorage> get credentialStorages {
    return _credentialStorages;
  }

  String? _defaultCredentialStorageId;

  /// DID of the profile
  final String did;

  /// Allows setting the default credential repository
  /// Throws:
  /// - [TdkException] if the the value does not match the identifier of an existing credential repository.
  ///     - invalid_credential_storage_identifier: when it cannot find a fle repository identifier.
  set defaultCredentialStorageId(String value) {
    if (!credentialStorages.containsKey(value)) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Credential storage with id $value does not exist',
            code: TdkExceptionType.invalidCredentialStorageIdentifier.code),
        StackTrace.current,
      );
    }
    _defaultCredentialStorageId = value;
  }

  /// Retrieves the default credential repository
  /// Returns null when there are no credential repositories availble
  CredentialStorage? get defaultCredentialStorage {
    if (_defaultCredentialStorageId != null) {
      return credentialStorages[_defaultCredentialStorageId]!;
    }

    return credentialStorages.entries.firstOrNull?.value;
  }

  /// Retrieves the list of shared storages
  List<SharedStorage> get sharedStorages => _sharedStorages.values.toList();

  /// Retrieves a shared storage by its ID
  ///
  /// Throws:
  /// - [TdkException] if the shared storage with the given ID does not exist
  SharedStorage sharedStorage(String id) {
    if (!_sharedStorages.containsKey(id)) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Shared storage with id $id does not exist',
            code: TdkExceptionType.invalidSharedStorageIdentifier.code),
        StackTrace.current,
      );
    }
    return _sharedStorages[id]!;
  }

  /// Adds a new shared storage
  ///
  /// Throws:
  /// - [TdkException] if a shared storage with the given ID already exists
  void addSharedStorage(
      {required String id, required SharedStorage sharedStorage}) {
    if (_sharedStorages.containsKey(id)) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Shared storage with id $id already exists',
            code: TdkExceptionType.invalidSharedStorageIdentifier.code),
        StackTrace.current,
      );
    }
    _sharedStorages[id] = sharedStorage;
  }

  /// Removes a shared storage
  ///
  /// Throws:
  /// - [TdkException] if the shared storage with the given ID does not exist
  void removeSharedStorage({required String id}) {
    if (!_sharedStorages.containsKey(id)) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Shared storage with id $id does not exist',
            code: TdkExceptionType.invalidSharedStorageIdentifier.code),
        StackTrace.current,
      );
    }
    _sharedStorages.remove(id);
  }
}
