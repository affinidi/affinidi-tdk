/// Enum representing various types of exceptions that can occur in the TDK (Trusted Data Kit) system.
///
/// - [accountAlreadyExists] - indicates that an account already exists.
/// - [exceededMaximumAccountAmount] - Indicates that the maximum number of accounts has been exceeded.
/// - [failedToDecrypt] - Indicates a failure in decrypting data.
/// - [unableToCreateNode] - Indicates a failure in creating a node.
/// - [unableToDeleteNode] - Indicates a failure in deleting a node.
/// - [unableToEditNode] - Indicates a failure in editing a node.
/// - [unableToGetNodeInfo] - Indicates a failure in retrieving node information.
/// - [unableToScanNode] - Indicates a failure in scanning a node.
/// - [unableToGetScannedFileInfo] - Indicates a failure in retrieving scanned file information.
/// - [unableToGetScannedFiles] - Indicates a failure in retrieving scanned files.
/// - [unableToGetNodeChildren] - Indicates a failure in retrieving child nodes.
/// - [unableToGetProfiles] - Indicates a failure in retrieving profiles.
/// - [unableToGetProfileData] - Indicates a failure in retrieving profile data.
/// - [unableToGetProfileTemplate] - Indicates a failure in retrieving profile templates.
/// - [unableToInitVaultDataManagerSystem] - Indicates a failure in initializing the Vault Data Manager system.
/// - [unableToGetVaultDataManagerPublicKey] - Indicates a failure in retrieving the Vault Data Manager public key.
/// - [missingPropertiesForFileUpload] - Indicates missing properties required for file upload.
/// - [unableToUploadFile] - Indicates a failure in uploading a file.
/// - [unableToUpdateProfileData] - Indicates a failure in updating profile data.
/// - [unableToDownloadConfig] - Indicates a failure in downloading configuration.
/// - [unableToGetAccounts] - Indicates a failure in retrieving accounts.
/// - [unableToCreateAccount] - Indicates a failure in creating an account.
/// - [unableToUpdateAccount] - Indicates a failure in updating an account.
/// - [unableToDeleteAccount] - Indicates a failure in deleting an account.
/// - [other] - Represents an unknown or unspecified error.
enum TdkExceptionType {
  ///Indicates that an account already exists.
  accountAlreadyExists(
      jsonValue: 'AlreadyExistsError', code: 'account_already_exists'),

  /// Indicates that the maximum number of accounts has been exceeded.
  exceededMaximumAccountAmount(
      jsonValue: 'ResourceLimitExceededError',
      code: 'exceeded_maximum_account_amount'),

  /// Indicates a failure in decrypting data.
  failedToDecrypt(code: 'failed_to_decrypt'),

  ///  Indicates a failure in creating a node.
  unableToCreateNode(code: 'unable_to_create_node'),

  /// Indicates a failure in deleting a node.
  unableToDeleteNode(code: 'unable_to_delete_node'),

  /// Indicates a failure in editing a node.
  unableToEditNode(code: 'unable_to_edit_node'),

  /// Indicates a failure in retrieving node information.
  unableToGetNodeInfo(code: 'unable_to_get_node_info'),

  /// Indicates a failure in scanning a node.
  unableToScanNode(code: 'unable_to_scan_node'),

  /// Indicates a failure in retrieving scanned file information.
  unableToGetScannedFileInfo(code: 'unable_to_get_scanned_file_info'),

  /// Indicates a failure in retrieving scanned files.
  unableToGetScannedFiles(code: 'unable_to_get_scanned_files'),

  /// Indicates a failure in retrieving child nodes.
  unableToGetNodeChildren(code: 'unable_to_get_node_children'),

  /// Indicates a failure in retrieving profiles.
  unableToGetProfiles(code: 'unable_to_get_profiles'),

  /// Indicates a failure in retrieving profile data.s
  unableToGetProfileData(code: 'unable_to_get_profile_data'),

  /// Indicates a failure in retrieving profile templates.
  unableToGetProfileTemplate(code: 'unable_to_get_profile_template'),

  /// Indicates a failure in initializing the Vault Data Manager system.
  unableToInitVaultDataManagerSystem(
      code: 'unable_to_init_vault_data_manager_system'),

  /// Indicates a failure in retrieving the Vault Data Manager public key.
  unableToGetVaultDataManagerPublicKey(
      code: 'unable_to_get_vault_data_manager_public_key'),

  /// Indicates missing properties required for file upload.
  missingPropertiesForFileUpload(code: 'missing_properties_for_file_upload'),

  /// Indicates a failure in uploading a file.
  unableToUploadFile(code: 'unable_to_upload_file'),

  /// Indicates a failure in updating profile data.
  unableToUpdateProfileData(code: 'unable_to_update_profile_data'),

  /// Indicates a failure in downloading configuration.
  unableToDownloadConfig(code: 'unable_to_download_config'),

  /// Indicates a failure in retrieving accounts.
  unableToGetAccounts(code: 'unable_to_get_accounts'),

  /// Indicates a failure in creating an account.
  unableToCreateAccount(code: 'unable_to_create_account'),

  /// Indicates a failure in updating an account.
  unableToUpdateAccount(code: 'unable_to_update_account'),

  /// Indicates a failure in deleting an account.
  unableToDeleteAccount(code: 'unable_to_delete_account'),

  /// Represents an unknown or unspecified error.
  other(code: 'unknown_error'),
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
      (type) => type.jsonValue == value,
      orElse: () => TdkExceptionType.other,
    );
  }
}
