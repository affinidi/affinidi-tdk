import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

/// Test fixtures for credential storage tests
class CredentialFixtures {
  static const String storageId = 'test-credential-storage';
  static const String profileId = 'test-profile-id';
  static const String credentialId = 'test-credential-id';

  static VerifiableCredential get mockVerifiableCredential {
    return UniversalParser.parse(jsonEncode({
      '@context': ['https://www.w3.org/2018/credentials/v1'],
      'id': 'urn:uuid:12345678-1234-1234-1234-123456789abc',
      'type': ['VerifiableCredential', 'UniversityDegree'],
      'issuer': 'did:example:123456789abcdefghi',
      'issuanceDate': '2023-01-01T00:00:00Z',
      'credentialSubject': {
        'id': 'did:example:abcdef123456789',
        'degree': {
          'type': 'BachelorDegree',
          'name': 'Bachelor of Science',
        },
      },
    }));
  }

  static DigitalCredential get mockDigitalCredential {
    return DigitalCredential(
      verifiableCredential: mockVerifiableCredential,
      id: credentialId,
    );
  }

  static List<DigitalCredential> get mockCredentials {
    return [
      mockDigitalCredential,
      DigitalCredential(
        verifiableCredential: UniversalParser.parse(jsonEncode({
          '@context': ['https://www.w3.org/2018/credentials/v1'],
          'id': 'urn:uuid:87654321-4321-4321-4321-cba987654321',
          'type': ['VerifiableCredential', 'DrivingLicense'],
          'issuer': 'did:example:987654321fedcba',
          'issuanceDate': '2023-02-01T00:00:00Z',
          'credentialSubject': {
            'id': 'did:example:fedcba987654321',
            'licenseNumber': 'DL123456789',
            'licenseClass': 'B',
          },
        })),
        id: 'test-credential-id-2',
      ),
    ];
  }

  static Uint8List get smallCredentialData {
    return Uint8List.fromList([1, 2, 3, 4, 5]);
  }

  static Uint8List get largeCredentialData {
    return Uint8List(1024 * 1024 * 11);
  }
}
