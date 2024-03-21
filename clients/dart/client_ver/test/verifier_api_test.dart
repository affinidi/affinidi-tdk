//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for VerifierApi
void main() {
  // final instance = VerifierApi();

  group('tests for VerifierApi', () {
    // Builds credential share request
    //
    // Build credential share request JWT object from input data.
    //
    //Future<BuildCredentialRequestOutput> buildCredentialRequest(BuildCredentialRequestInput buildCredentialRequestInput) async
    test('test buildCredentialRequest', () async {
      // TODO
    });

    // Validates JWT token
    //
    // Validates JWT object.  returns   isValid: boolean   payload: payload from JWT
    //
    //Future<ValidateJwtOutput> validateJwt(ValidateJwtInput validateJwtInput) async
    test('test validateJwt', () async {
      // TODO
    });

    // Verifying share response token
    //
    // Verifying JWT token (signature and expiration), validate each credential inside it (signature), validate response against request if requestToken was passed.  `errors` contains list of error messages for invalid credentials.
    //
    //Future<VerifyCredentialShareResponseOutput> verifyCredentialShareResponse(VerifyCredentialShareResponseInput verifyCredentialShareResponseInput) async
    test('test verifyCredentialShareResponse', () async {
      // TODO
    });

    // Verifying VC
    //
    // Verifying Verifiable Credentials (signatures)  `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.
    //
    //Future<VerifyCredentialOutput> verifyCredentials(VerifyCredentialInput verifyCredentialInput) async
    test('test verifyCredentials', () async {
      // TODO
    });

    // Verifying VP
    //
    // Verifying Verifiable Presentation (signatures)  `isValid` - true if presentation verified `error` verificaction error.
    //
    //Future<VerifyPresentationOutput> verifyPresentation(VerifyPresentationInput verifyPresentationInput) async
    test('test verifyPresentation', () async {
      // TODO
    });

  });
}
