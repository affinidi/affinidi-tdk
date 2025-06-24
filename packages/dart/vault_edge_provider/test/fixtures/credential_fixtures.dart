import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

/// Test fixtures for credential storage tests
class CredentialFixtures {
  static const String storageId = 'test-credential-storage';
  static const String profileId = 'test-profile-id';
  static const String credentialId = 'test-credential-id';

  static Map<String, dynamic> get universityDegreeCredentialJson => {
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
        'proof': {
          'type': 'Ed25519Signature2018',
          'created': '2023-01-01T00:00:00Z',
          'proofPurpose': 'assertionMethod',
          'verificationMethod': 'did:example:123456789abcdefghi#key-1',
          'jws':
              'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..test-signature'
        }
      };

  static Map<String, dynamic> get drivingLicenseCredentialJson => {
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
        'proof': {
          'type': 'Ed25519Signature2018',
          'created': '2023-02-01T00:00:00Z',
          'proofPurpose': 'assertionMethod',
          'verificationMethod': 'did:example:987654321fedcba#key-1',
          'jws':
              'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..test-signature-2'
        }
      };

  static String get universityDegreeCredentialJsonString =>
      jsonEncode(universityDegreeCredentialJson);

  static String get drivingLicenseCredentialJsonString =>
      jsonEncode(drivingLicenseCredentialJson);

  static Uint8List get universityDegreeCredentialBytes =>
      utf8.encode(universityDegreeCredentialJsonString);

  static Uint8List get drivingLicenseCredentialBytes =>
      utf8.encode(drivingLicenseCredentialJsonString);

  static VerifiableCredential get mockVerifiableCredential {
    return UniversalParser.parse(universityDegreeCredentialJsonString);
  }

  static VerifiableCredential get drivingLicenseVerifiableCredential {
    return UniversalParser.parse(drivingLicenseCredentialJsonString);
  }

  static DigitalCredential get mockDigitalCredential {
    return DigitalCredential(
      verifiableCredential: mockVerifiableCredential,
      id: credentialId,
    );
  }

  static DigitalCredential get drivingLicenseDigitalCredential {
    return DigitalCredential(
      verifiableCredential: drivingLicenseVerifiableCredential,
      id: 'test-credential-id-2',
    );
  }

  static List<DigitalCredential> get mockCredentials {
    return [
      mockDigitalCredential,
      drivingLicenseDigitalCredential,
    ];
  }

  static CredentialData get mockCredentialData {
    return CredentialData(
      id: credentialId,
      content: universityDegreeCredentialBytes,
    );
  }

  static CredentialData get drivingLicenseCredentialData {
    return CredentialData(
      id: 'test-credential-id-2',
      content: drivingLicenseCredentialBytes,
    );
  }

  static List<CredentialData> get mockCredentialDataList {
    return [
      mockCredentialData,
      drivingLicenseCredentialData,
    ];
  }

  static Uint8List get smallCredentialData {
    return Uint8List.fromList([1, 2, 3, 4, 5]);
  }

  static Uint8List get largeCredentialData {
    return Uint8List(1024 * 1024 * 11);
  }
}
