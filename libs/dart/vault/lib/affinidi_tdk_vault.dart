/// This library allows managing Vault instances and their profiles
library;

export 'package:affinidi_tdk_common/affinidi_tdk_common.dart' show TdkException;
export 'package:ssi/ssi.dart'
    show KeyStore, StoredKey, UniversalParser, VerifiableCredential;

export 'src/digital_credential.dart';
export 'src/dto/shared_profile_dto.dart';
export 'src/helpers/file_utils.dart';
export 'src/helpers/vault_cancel_token.dart';
export 'src/helpers/vault_progress_callback.dart';
export 'src/in_memory_vault_store.dart';
export 'src/permissions.dart';
export 'src/profile.dart';
export 'src/storage_interfaces/credential_storage.dart';
export 'src/storage_interfaces/file_storage.dart';
export 'src/storage_interfaces/item.dart';
export 'src/storage_interfaces/paginated_list.dart';
export 'src/storage_interfaces/profile_access_sharing.dart';
export 'src/storage_interfaces/profile_repository.dart';
export 'src/storage_interfaces/repository_configuration.dart';
export 'src/storage_interfaces/shared_storage.dart';
export 'src/storage_interfaces/vault_store.dart';
export 'src/utils/file_provider_configuration.dart';
export 'src/vault.dart';
