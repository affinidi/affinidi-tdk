import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

/// Interface for managing verifiable credentials within a profile's storage.
///
/// This interface provides operations for:
/// - Listing stored credentials both as nodes and as verifiable credentials
/// - Saving new credentials to the profile
/// - Deleting existing credentials
abstract interface class CredentialsServiceInterface {
  /// Lists all digital credentials stored in the profile, with their associated nodes.
  ///
  /// - [predicate] (optional) - filter function to select specific credentials.
  ///
  /// Returns a list of [DigitalCredential] objects that combine both the credential
  /// data and its storage metadata.
  ///
  /// Example:
  /// ```dart
  /// final digitalCredentials = await credentialsService.listNodes();
  /// ```
  Future<List<DigitalCredential>> listNodes(
      [bool Function(DigitalCredential digitalCredential)? predicate]);

  /// Lists all verifiable credentials stored in the profile.
  ///
  /// - [predicate] (optional) - filter function to select specific credentials.
  ///
  /// Returns a list of [DigitalCredential] objects containing just the credential data.
  ///
  /// Example:
  /// ```dart
  /// final credentials = await credentialsService.list();
  /// ```
  Future<List<DigitalCredential>> list(
      [bool Function(DigitalCredential digitalCredential) predicate]);

  /// Saves a new verifiable credential to the profile's storage.
  ///
  /// - [verifiableCredential] - The credential to be saved.
  ///
  /// Example:
  /// ```dart
  /// await credentialsService.save(verifiableCredential: credentialToBeSaved);
  /// ```
  Future<void> save({
    required VerifiableCredential verifiableCredential,
  });

  /// Deletes a stored credential from the profile.
  ///
  /// - [digitalCredentialId] - The unique identifier of the credential to delete.
  ///
  /// Example:
  /// ```dart
  /// await credentialsService.delete(digitalCredentialId: 'your_digital_credential_id');
  /// ```
  Future<void> delete({
    required String digitalCredentialId,
  });
}
