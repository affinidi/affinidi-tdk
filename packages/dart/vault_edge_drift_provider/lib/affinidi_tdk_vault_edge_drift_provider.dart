/// A library to manage Vault CRUD operations on a Drift database
library;

export 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart'
    show
        EdgeCredentialsRepositoryInterface,
        EdgeFileRepositoryInterface,
        EdgeProfileRepositoryInterface,
        ItemData,
        TdkException,
        TdkExceptionType;

export 'src/database/database.dart';
export 'src/database/database_config.dart';
export 'src/edge_drift_credential_repository.dart';
export 'src/edge_drift_file_repository.dart';
export 'src/edge_drift_profile_repository.dart';
