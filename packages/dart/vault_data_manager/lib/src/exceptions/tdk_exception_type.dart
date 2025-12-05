/// Enum representing various types of exceptions that can occur in the TDK (Trusted Data Kit) system.
///
/// - [accountAlreadyExists] - Indicates that an account already exists.
/// - [credentialNotFound] - Indicates a credential cannot be found.
/// - [dataEncryptionKeyNotFound] - Indicates the data encryption key cannot be found.
/// - [exceededMaximumAccountAmount] - Indicates that the maximum number of accounts has been exceeded.
/// - [failedToDecrypt] - Indicates a failure in decrypting data.
/// - [failedToGetVerifiableCredentials] -  Indicates a verifiable credentials cannot be retrieved.
/// - [failedToListItems] - Indicates items cannot be listed.
/// - [fileInfoNotFound] - Indicates file information cannot be found.
/// - [folderNotFound] Indicates a folder cannot be found.
/// - [invalidAccountIndex] - Indicates the account index is invalid.
/// - [invalidConfiguration] - Indicates the provided configuration is invalid.
/// - [invalidNodeType] - Indicates the node type is invalid.
/// - [invalidRepositoryConfigurationType] - Indicates the repository configuration type is invalid.
/// - [missingFileEdek] - Indicates the file info is not providing an edek
/// - [missingPropertiesForFileUpload] - Indicates missing properties required for file upload.
/// - [missingVaultStore] - Indicates the vault store is missing.
/// - [notImplemented] - Indicates a feature is not implemented.
/// - [nullConsumedFileStorage] - Indicates the vault file consumption value is null.
/// - [other] - Represents an unknown or unspecified error.
/// - [profileIdNotSet] - Indicates the profile ID is not set.
/// - [profleNotConfigured] - Indicates the profile repository is not configured.
/// - [unableToCreateAccount] - Indicates a failure in creating an account.
/// - [unableToCreateNode] - Indicates a failure in creating a node.
/// - [unableToDeleteAccount] - Indicates a failure in deleting an account.
/// - [unableToDeleteFile] Indicates a file cannot be deleted.
/// - [unableToDeleteFolder] - Indicates a folder cannot be deleted.
/// - [unableToDeleteNode] - Indicates a failure in deleting a node.
/// - [unableToDeleteProfile] - Indicates a failure in deleting a profile.
/// - [unableToDownloadConfig] - Indicates a failure in downloading configuration.
/// - [unableToEditNode] - Indicates a failure in editing a node.
/// - [unableToGetAccounts] - Indicates a failure in retrieving accounts.
/// - [unableToGetNodeChildren] - Indicates a failure in retrieving child nodes.
/// - [unableToGetNodeInfo] - Indicates a failure in retrieving node information.
/// - [unableToGetProfileData] - Indicates a failure in retrieving profile data.
/// - [unableToGetProfiles] - Indicates a failure in retrieving profiles.
/// - [unableToGetProfileTemplate] - Indicates a failure in retrieving profile templates.
/// - [unableToGetScannedFileInfo] - Indicates a failure in retrieving scanned file information.
/// - [unableToGetScannedFiles] - Indicates a failure in retrieving scanned files.
/// - [unableToGetVaultDataManagerPublicKey] - Indicates a failure in retrieving the Vault Data Manager public key.
/// - [unableToInitVaultDataManagerSystem] - Indicates a failure in initializing the Vault Data Manager system.
/// - [unableToScanNode] - Indicates a failure in scanning a node.
/// - [unableToRevokeAccess] - Indicates access cannot be revoked.
/// - [unableToUpdateProfileData] - Indicates a failure in updating profile data.
/// - [unableToUploadFile] - Indicates a failure in uploading a file.
/// - [unableToUpdateAccount] - Indicates a failure in updating an account.
enum TdkExceptionType {
  ///Indicates that an account already exists.
  accountAlreadyExists(
      jsonValue: 'AlreadyExistsError', code: 'account_already_exists'),

  /// Exception thrown when a credential cannot be found.
  credentialNotFound(code: 'credential_not_found'),

  /// Exception thrown when the data encryption key cannot be found.
  dataEncryptionKeyNotFound(code: 'data_encryption_not_found'),

  /// Indicates that the maximum number of accounts has been exceeded.
  exceededMaximumAccountAmount(
      jsonValue: 'ResourceLimitExceededError',
      code: 'exceeded_maximum_account_amount'),

  /// Indicates a failure in decrypting data.
  failedToDecrypt(code: 'failed_to_decrypt'),

  /// Exception thrown when verifiable credentials cannot be retrieved.
  failedToGetVerifiableCredentials(
      code: 'failed_to_get_verifiable_credentials'),

  /// Exception thrown when items cannot be listed.
  failedToListItems(code: 'failed_to_list_items'),

  /// Exception thrown when file information cannot be found.
  fileInfoNotFound(code: 'file_info_not_found'),

  /// Exception thrown when a folder cannot be found.
  folderNotFound(code: 'folder_not_found'),

  /// Exception thrown when the account index is invalid.
  invalidAccountIndex(code: 'invalid_account_index'),

  /// Exception thrown when the configuration is invalid.
  invalidConfiguration(code: 'invalid_configuration'),

  /// Exception thrown when the node type is invalid.
  invalidNodeType(code: 'invalid_node_type'),

  /// Exception thrown when the repository configuration type is invalid.
  invalidRepositoryConfigurationType(
      code: 'invalid_repository_configuration_type'),

  /// Exception thrown when the file info is not providing an edek
  missingFileEdek(code: 'missing_file_edek'),

  /// Indicates missing properties required for file upload.
  missingPropertiesForFileUpload(code: 'missing_properties_for_file_upload'),

  /// Exception thrown when the vault store is missing.
  missingVaultStore(code: 'vfs_profile_repository_needs_a_vault_store'),

  /// Exception thrown when a feature is not implemented.
  notImplemented(code: 'not_implemented'),

  /// Exception thrown when the vault file consumption value is null.
  nullConsumedFileStorage(code: 'null_consumed_file_storage'),

  /// Represents an unknown or unspecified error.
  other(code: 'unknown_error'),

  /// Exception thrown when the profile ID is not set.
  profileIdNotSet(code: 'profile_id_not_set'),

  /// Exception thrown when the profile repository is not configured.
  profleNotConfigured(code: 'profile_not_configured'),

  /// Indicates a failure in creating an account.
  unableToCreateAccount(code: 'unable_to_create_account'),

  ///  Indicates a failure in creating a node.
  unableToCreateNode(code: 'unable_to_create_node'),

  /// Indicates a failure in deleting an account.
  unableToDeleteAccount(code: 'unable_to_delete_account'),

  /// Exception thrown when a file cannot be deleted.
  unableToDeleteFile(code: 'unable_to_delete_file'),

  /// Exception thrown when can not delete the folder.
  unableToDeleteFolder(code: 'unable_to_delete_folder'),

  /// Indicates a failure in deleting a node.
  unableToDeleteNode(code: 'unable_to_delete_node'),

  /// Exception thrown when can not delete the profile.
  unableToDeleteProfile(code: 'unable_to_delete_profile'),

  /// Indicates a failure in downloading configuration.
  unableToDownloadConfig(code: 'unable_to_download_config'),

  /// Indicates a failure in editing a node.
  unableToEditNode(code: 'unable_to_edit_node'),

  /// Indicates a failure in retrieving accounts.
  unableToGetAccounts(code: 'unable_to_get_accounts'),

  /// Indicates a failure in retrieving child nodes.
  unableToGetNodeChildren(code: 'unable_to_get_node_children'),

  /// Indicates a failure in retrieving node information.
  unableToGetNodeInfo(code: 'unable_to_get_node_info'),

  /// Indicates a failure in retrieving profile data.s
  unableToGetProfileData(code: 'unable_to_get_profile_data'),

  /// Indicates a failure in retrieving profiles.
  unableToGetProfiles(code: 'unable_to_get_profiles'),

  /// Indicates a failure in retrieving profile templates.
  unableToGetProfileTemplate(code: 'unable_to_get_profile_template'),

  /// Indicates a failure in retrieving scanned file information.
  unableToGetScannedFileInfo(code: 'unable_to_get_scanned_file_info'),

  /// Indicates a failure in retrieving scanned files.
  unableToGetScannedFiles(code: 'unable_to_get_scanned_files'),

  /// Indicates a failure in retrieving the Vault Data Manager public key.
  unableToGetVaultDataManagerPublicKey(
      code: 'unable_to_get_vault_data_manager_public_key'),

  /// Indicates a failure in initializing the Vault Data Manager system.
  unableToInitVaultDataManagerSystem(
      code: 'unable_to_init_vault_data_manager_system'),

  /// Indicates a failure in scanning a node.
  unableToScanNode(code: 'unable_to_scan_node'),

  /// Indicates a failure in updating profile data.
  unableToUpdateProfileData(code: 'unable_to_update_profile_data'),

  /// Indicates a failure in uploading a file.
  unableToUploadFile(code: 'unable_to_upload_file'),

  /// Indicates a failure in updating an account.
  unableToUpdateAccount(code: 'unable_to_update_account'),

  /// Exception thrown when access cannot be granted.
  unableToGrantAccess(code: 'unable_to_grant_access'),

  /// Exception thrown when access has already been granted.
  unableToGrantAccessAlreadyGranted(
      code: 'unable_to_grant_access_already_granted'),

  /// Exception thrown when access cannot be revoked.
  unableToRevokeAccess(code: 'unable_to_revoke_access'),

  /// Exception thrown when access cannot be updated.
  unableToUpdateAccess(code: 'unable_to_update_access'),

  /// Exception thrown when access cannot be retrieved.
  unableToGetAccess(code: 'unable_to_get_access'),

  /// Exception thrown when the node type is not supported.
  unsupportedNodeType(code: 'unsupported_node_type'),

  /// Exception thrown when the profile repository is incorrect.
  wrongProfileRepository(code: 'wrong_profile_repository'),
  ;

  const TdkExceptionType({required this.code, this.jsonValue});

  /// The unique code representing the specific type of exception.
  final String code;

  /// JSON representation of the exception type, if available.
  final String? jsonValue;

  /// Creates a [TdkExceptionType] instance from a JSON string.
  ///
  /// - [value] (optional) - JSON string that represents the exception type.
  ///
  /// Returns [TdkExceptionType] if a match is found, otherwise [TdkExceptionType.other].
  static TdkExceptionType fromJson(String? value) {
    return TdkExceptionType.values.firstWhere(
      (type) => type.jsonValue != null && type.jsonValue == value,
      orElse: () => TdkExceptionType.other,
    );
  }
}
