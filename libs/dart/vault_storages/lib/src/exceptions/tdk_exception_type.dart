/// Types of exceptions that can occur in the TDK.
enum TdkExceptionType {
  /// Exception thrown when a credential cannot be found.
  credentialNotFound('credential_not_found'),

  /// Exception thrown when the data encryption key cannot be found.
  dataEncryptionKeyNotFound('data_encryption_not_found'),

  /// Exception thrown when verifiable credentials cannot be retrieved.
  failedToGetVerifiableCredentials('failed_to_get_verifiable_credentials'),

  /// Exception thrown when items cannot be listed.
  failedToListItems('failed_to_list_items'),

  /// Exception thrown when file information cannot be found.
  fileInfoNotFound('file_info_not_found'),

  /// Exception thrown when a folder cannot be found.
  folderNotFound('folder_not_found'),

  /// Exception thrown when the configuration is invalid.
  invalidConfiguration('invalid_configuration'),

  /// Exception thrown when the account index is invalid.
  invalidAccountIndex('invalid_account_index'),

  /// Exception thrown when the node type is invalid.
  invalidNodeType('invalid_node_type'),

  /// Exception thrown when the repository configuration type is invalid.
  invalidRepositoryConfigurationType('invalid_repository_configuration_type'),

  /// Exception thrown when the vault store is missing.
  missingVaultStore('vfs_profile_repository_needs_a_vault_store'),

  /// Exception thrown when the file info is not providing an edek
  missingFileEdek('missing_file_edek'),

  /// Exception thrown when the system is not configured.
  notConfigured('not_configured'),

  /// Exception thrown when a feature is not implemented.
  notImplemented('not_implemented'),

  /// Exception thrown when the consumed file storage is null.
  nullConsumedFileStorage('null_consumed_file_storage'),

  /// Exception thrown when the profile ID is not set.
  profileIdNotSet('profile_id_not_set'),

  /// Exception thrown for unknown errors.
  other('unknown_error'),

  /// Exception thrown when can not delete the file.
  unableToDeleteFile('unable_to_delete_file'),

  /// Exception thrown when can not delete the folder.
  unableToDeleteFolder('unable_to_delete_folder'),

  /// Exception thrown when can not delete the profile.
  unableToDeleteProfile('unable_to_delete_profile'),

  /// Exception thrown when access cannot be granted.
  unableToGrantAccess('unable_to_grant_access'),

  /// Exception thrown when access has already been granted.
  unableToGrantAccessAlreadyGranted('unable_to_grant_access_already_granted'),

  /// Exception thrown when access cannot be updated.
  unableToUpdateAccess('unable_to_update_access'),

  /// Exception thrown when access cannot be revoked.
  unableToRevokeAccess('unable_to_revoke_access'),

  /// Exception thrown when the node type is not supported.
  unsupportedNodeType('unsupported_node_type'),

  /// Exception thrown when the profile repository is incorrect.
  wrongProfileRepository('wrong_profile_repository');

  /// Creates a new instance of [TdkExceptionType].
  ///
  /// [code] - The error code associated with this exception type.
  const TdkExceptionType(this.code);

  /// The error code associated with this exception type.
  final String code;
}
