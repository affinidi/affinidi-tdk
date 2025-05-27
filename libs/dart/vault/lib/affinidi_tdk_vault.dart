/// This library allows managing Vault instances and their profiles
library;

export 'package:affinidi_tdk_common/affinidi_tdk_common.dart' show TdkException;
export 'package:ssi/ssi.dart' show KeyStore, StoredKey;

export 'src/digital_credential.dart';
export 'src/dto/shared_profile_dto.dart';
export 'src/helpers/cancel_token_interface.dart';
export 'src/permissions.dart';
export 'src/profile.dart';
export 'src/storage_interfaces/credential_storage.dart';
export 'src/storage_interfaces/file_storage.dart';
export 'src/storage_interfaces/item.dart';
export 'src/storage_interfaces/profile_repository.dart';
export 'src/storage_interfaces/repository_configuration.dart';
export 'src/storage_interfaces/shared_storage.dart';
export 'src/storage_interfaces/vault_store.dart';
export 'src/vault.dart';
