// ignore_for_file: lines_longer_than_80_chars

/// Types of exceptions that can occur in the TDK.
enum TdkExceptionType {
  /// [credentialNotFound] - Indicates the credential does not exist
  credentialNotFound('credential_not_found'),

  /// [decryptionFailed] - Indicates a failure in decryption operations
  decryptionFailed('decryptionFailed'),

  /// [encryptionFailed] - Indicates a failure in encryption operations
  encryptionFailed('encryption_failed'),

  /// [invalidFileId] - Indicates the fileId does not exist
  invalidFileId('invalid_file_id'),

  /// [invalidFileSize] - Indicates the file size exceeds the maximum allowed size
  invalidFileSize('invalid_file_size'),

  /// [invalidFileType] - Indicates the file type is not allowed
  invalidFileType('invalid_file_type'),

  /// - [invalidFolderId] - Indicates the folderId does not exist
  invalidFolderId('invalid_folder_id'),

  /// - [invalidParentFolderId] - Indicates the parent folderId does not exist
  invalidParentFolderId('invalid_parent_folder_id'),

  /// - [invalidRepositoryConfigurationType] - Indicates the repository configuration type is invalid.
  invalidRepositoryConfigurationType('invalid_repository_configuration_type'),

  /// [invalidCredentialId] - Indicates the credential ID is invalid
  invalidCredentialId('invalid_credential_id'),

  /// [failedToListCredentials] - Indicates a failure to list credentials
  failedToListCredentials('failed_to_list_credentials'),

  /// [failedToSaveCredential] - Indicates a failure to save a credential
  failedToSaveCredential('failed_to_save_credential'),

  /// - [missingEdgeCipher] = Indicates a cipher has not been set on VaultStore
  missingEdgeCipher('missing_edge_cipher'),

  /// - [missingProfileId] - Indicates the Profile does not have an identifier
  missingProfileId('missing_profile_id'),

  /// - [missingVaultStore] - Indicates the vault store is missing.
  missingVaultStore('missing_vault_store'),

  /// - [profleNotConfigured] - Indicates the profile repository is not configured.
  profleNotConfigured('profle_not_configured'),

  /// [unableToDeleteFolderWithContent] - Indicates the folder has content and cannot be deleted
  unableToDeleteFolderWithContent('unable_to_delete_folder_with_content'),

  /// [unableToDeleteNonExistentProfile] - Indicates it was not possible to delete a profile as it does not exists
  unableToDeleteNonExistentProfile('unable_to_delete_non_existent_profile'),

  /// [unableToDeleteProfileWithContent] - Indicates a profile has at least on folder, file or credential associated to it and cannot be deleted
  unableToDeleteProfileWithContent('unable_to_delete_profile_with_content'),

  /// [unableToUpdateNonExistentProfile] - Indicates it was not possible to update a profile as it does not exists
  unableToUpdateNonExistentProfile('unable_to_update_non_existent_profile'),
  ;

  /// Creates a new instance of [TdkExceptionType].
  ///
  /// [code] - The error code associated with this exception type.
  const TdkExceptionType(this.code);

  /// The error code associated with this exception type.
  final String code;
}
