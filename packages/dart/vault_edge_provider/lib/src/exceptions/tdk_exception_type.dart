// ignore_for_file: lines_longer_than_80_chars

/// Types of exceptions that can occur in the TDK.
enum TdkExceptionType {
  /// - [missingProfileId] - Indicates the Profile does not have an identifier
  missingProfileId('missing_profile_id'),

  /// - [missingVaultStore] - Indicates the vault store is missing.
  missingVaultStore('missing_vault_store'),

  /// - [profleNotConfigured] - Indicates the profile repository is not configured.
  profleNotConfigured('profle_not_configured'),

  /// - [invalidRepositoryConfigurationType] - Indicates the repository configuration type is invalid.
  invalidRepositoryConfigurationType('invalid_repository_configuration_type'),
  ;

  /// Creates a new instance of [TdkExceptionType].
  ///
  /// [code] - The error code associated with this exception type.
  const TdkExceptionType(this.code);

  /// The error code associated with this exception type.
  final String code;
}
