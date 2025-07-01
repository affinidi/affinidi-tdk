/// Support for managing files and credentials on the Edge
library;

export 'package:affinidi_tdk_common/affinidi_tdk_common.dart' show TdkException;
export 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart'
    show
        DigitalCredential,
        File,
        Folder,
        Item,
        PaginatedList,
        UniversalParser,
        VaultCancelToken,
        VerifiableCredential;

export 'src/codecs/credential_codec.dart';
export 'src/exceptions/tdk_exception_type.dart';
export 'src/interfaces/edge_credentials_repository_interface.dart';
export 'src/interfaces/edge_file_repository_interface.dart';
export 'src/interfaces/edge_profile_repository_interface.dart';
export 'src/models/edge_credential.dart';
export 'src/models/edge_profile.dart';
export 'src/storages/vault_edge_credential_storage.dart';
export 'src/storages/vault_edge_file_storage.dart';
export 'src/storages/vault_edge_profile_repository.dart';
