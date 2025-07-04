/// A library to manage Vault CRUD operations on a Drift database
library;

export 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart'
    show EdgeProfile, File, Folder, Item;
export 'package:drift/native.dart' show NativeDatabase;

export 'src/database/database.dart' show Database;
export 'src/database/database_config.dart';
export 'src/edge_drift_credential_repository.dart';
export 'src/edge_drift_file_repository.dart';
export 'src/edge_drift_profile_repository.dart';
export 'src/edge_drift_repository_factory.dart';
