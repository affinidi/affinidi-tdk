import '../../affinidi_tdk_vault.dart';

/// Interface for managing shared storage operations, including files, folders, and credentials.
abstract interface class SharedStorage
    implements FileStorage, CredentialStorage {}
