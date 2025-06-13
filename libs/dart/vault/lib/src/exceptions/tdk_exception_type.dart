/// Types of exceptions that can occur in the TDK.
enum TdkExceptionType {
  /// Exception thrown when the credential storage identifier is invalid.
  invalidCredentialStorageIdentifier('invalid_credential_storage_identifier'),

  /// Exception thrown when the file storage identifier is invalid.
  invalidFileStorageIdentifier('invalid_file_storage_identifier'),

  /// Exception thrown when the profile repository identifier is invalid.
  invalidProfileRepositoryIdentifier('invalid_profile_repository_identifier'),

  /// Exception thrown when the shared storage identifier is invalid.
  invalidSharedStorageIdentifier('invalid_shared_storage_identifier'),

  /// Exception thrown when the profile identifier is invalid.
  invalidProfileIdentifier('invalid_profile_identifier'),

  /// Exception thrown when the profile repository is missing.
  missingProfileRepository('missing_profile_repository'),

  /// Exception thrown when trying to share profiles via a repository that does not support it.
  unsupportedProfileAccessSharing('unsupported_profile_access_sharing'),

  /// Exception thrown when the vault has not been initialized.
  vaultNotInitialized('vault_not_initialized'),

  /// Exception thrown when the request has been cancelled.
  requestCancelled('request_cancelled'),
  ;

  /// Creates a new instance of [TdkExceptionType].
  ///
  /// [code] - The error code associated with this exception type.
  const TdkExceptionType(this.code);

  /// The error code associated with this exception type.
  final String code;
}
