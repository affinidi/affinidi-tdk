import 'dart:convert';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

class CredentialFixtures {
  static Map<String, dynamic> mockVCJson() => {
        '@context': [
          'https://www.w3.org/2018/credentials/v1',
          'https://schema.affinidi.io/HITContactsV1R0.jsonld'
        ],
        'id': 'cred1',
        'type': ['VerifiableCredential', 'HITContacts'],
        'holder': {
          'id': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa'
        },
        'credentialSubject': {'email': 'user@affinidi.com'},
        'credentialSchema': {
          'id': 'credentialSchemaId',
          'type': 'credentialSchemaType'
        },
        'issuanceDate': DateTime.now().toIso8601String(),
        'expirationDate':
            DateTime.now().add(const Duration(days: 2)).toIso8601String(),
        'issuer': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
        'proof': {
          'type': 'EcdsaSecp256k1Signature2019',
          'created': DateTime.now().toUtc().toIso8601String(),
          'proofPurpose': 'assertionMethod',
          'verificationMethod':
              'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa#aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
          'jws':
              'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..ee19g6fjm34kb9aG_tGzVyW5-sLq6KvFTBnmOHX3ibBFrikO8xYMp3pCg1SU3gePtSnAVKzyDIfxj1xifGcQHw'
        }
      };

  static VerifiableCredential get mockVerifiableCredential =>
      UniversalParser.parse(jsonEncode(mockVCJson()));

  static DigitalCredential get mockDigitalCredential => DigitalCredential(
        verifiableCredential: mockVerifiableCredential,
        id: 'cred1',
      );

  static List<DigitalCredential> get mockCredentials => [mockDigitalCredential];

  static List<DigitalCredential> get mockMultipleCredentials => [
        DigitalCredential(
          verifiableCredential: mockVerifiableCredential,
          id: 'cred1',
        ),
        DigitalCredential(
          verifiableCredential: UniversalParser.parse(jsonEncode({
            '@context': [
              'https://www.w3.org/2018/credentials/v1',
              'https://schema.affinidi.io/HITContactsV1R0.jsonld'
            ],
            'id': 'cred2',
            'type': ['VerifiableCredential', 'HITContacts'],
            'holder': {
              'id': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa'
            },
            'credentialSubject': {'email': 'user2@affinidi.com'},
            'credentialSchema': {
              'id': 'credentialSchemaId',
              'type': 'credentialSchemaType'
            },
            'issuanceDate': DateTime.now().toIso8601String(),
            'expirationDate':
                DateTime.now().add(const Duration(days: 2)).toIso8601String(),
            'issuer':
                'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
            'proof': {
              'type': 'EcdsaSecp256k1Signature2019',
              'created': DateTime.now().toUtc().toIso8601String(),
              'proofPurpose': 'assertionMethod',
              'verificationMethod':
                  'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa#aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
              'jws':
                  'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..ee19g6fjm34kb9aG_tGzVyW5-sLq6KvFTBnmOHX3ibBFrikO8xYMp3pCg1SU3gePtSnAVKzyDIfxj1xifGcQHw'
            }
          })),
          id: 'cred2',
        ),
      ];
}
