/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'package:affinidi_tdk_common/affinidi_tdk_common.dart' show TdkException;
export 'package:ssi/ssi.dart' show VerifiableCredential;

export 'src/credential/hive_credential_storage.dart';
export 'src/credential/vfs_credential_storage.dart';
export 'src/exceptions/tdk_exception_type.dart';
export 'src/file/github_file_storage.dart';
export 'src/file/vfs_file_storage.dart';
export 'src/iam_api_service_interface.dart';
export 'src/model/account.dart';
export 'src/model/item.dart';
export 'src/model/node.dart';
export 'src/model/node_status.dart';
export 'src/model/node_type.dart';
export 'src/model/profile_data.dart';
export 'src/model/profile_datapoint.dart';
export 'src/model/recognized_profile_data.dart';
export 'src/model/scanned_file.dart';
export 'src/model/vault_consumption.dart';
export 'src/model/vault_data_manager_profile.dart';
export 'src/profiles/vfs_profile_repository.dart';
export 'src/services/vault_data_manager_service/vault_data_manager_service.dart';
export 'src/services/vault_data_manager_service/vault_data_manager_service_interface.dart';
export 'src/shared_storage/vfs_shared_storage.dart';
export 'src/vault/in_memory_vault_store.dart';
