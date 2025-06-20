import 'dart:convert';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

class CredentialFixtures {
  static Map<String, dynamic> get testCredentialJson => {
        '@context': ['https://www.w3.org/2018/credentials/v1'],
        'type': ['VerifiableCredential', 'TestCredential'],
        'issuer': 'did:example:issuer',
        'issuanceDate': '2020-01-01T00:00:00Z',
        'credentialSubject': {'id': 'did:example:subject'},
        'proof': {
          'type': 'Ed25519Signature2018',
          'created': '2020-01-01T00:00:00Z',
          'proofPurpose': 'assertionMethod',
          'verificationMethod': 'did:example:issuer#key-1',
          'jws': 'eyJ...'
        }
      };

  static Map<String, dynamic> get anotherCredentialJson => {
        '@context': ['https://www.w3.org/2018/credentials/v1'],
        'type': ['VerifiableCredential', 'AnotherCredential'],
        'issuer': 'did:example:issuer2',
        'issuanceDate': '2021-01-01T00:00:00Z',
        'credentialSubject': {'id': 'did:example:subject2'},
        'proof': {
          'type': 'Ed25519Signature2018',
          'created': '2021-01-01T00:00:00Z',
          'proofPurpose': 'assertionMethod',
          'verificationMethod': 'did:example:issuer2#key-1',
          'jws': 'eyJ...'
        }
      };

  static VerifiableCredential get testVerifiableCredential =>
      UniversalParser.parse(jsonEncode(testCredentialJson));

  static VerifiableCredential get anotherVerifiableCredential =>
      UniversalParser.parse(jsonEncode(anotherCredentialJson));

  static DigitalCredential get testDigitalCredential => DigitalCredential(
        verifiableCredential: testVerifiableCredential,
        id: 'cred1',
      );

  static DigitalCredential get anotherDigitalCredential => DigitalCredential(
        verifiableCredential: anotherVerifiableCredential,
        id: 'cred2',
      );

  static List<DigitalCredential> get multipleDigitalCredentials => [
        testDigitalCredential,
        anotherDigitalCredential,
      ];
}
