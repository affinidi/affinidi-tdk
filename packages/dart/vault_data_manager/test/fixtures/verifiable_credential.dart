// ignore_for_file: inference_failure_on_collection_literal

import 'dart:convert';

import 'package:ssi/ssi.dart';

const String credentialId = 'some_test_credential_id';

const String credentialName = 'CredentialName';

final List<VerifiableCredential> credentials = List.from(
  List.generate(
    5,
    (index) => UniversalParser.parse(
      jsonEncode(
        {
          '@context': [
            'https://www.w3.org/2018/credentials/v1',
            'https://schema.affinidi.io/HITContactsV1R0.jsonld'
          ],
          'id': "$credentialId${index > 0 ? index : ''}",
          'type': ['VerifiableCredential', credentialName],
          'issuer': 'test_issuer',
          'issuanceDate': '2024-01-01T00:00:00Z',
          'credentialSubject': {},
          'credentialSchema': {
            'id': 'test_schema_id',
            'type': 'JsonSchemaValidator2018'
          },
          'proof': {
            'type': 'test_proof_type',
            'created': '2024-01-01T00:00:00Z',
            'proofPurpose': 'assertionMethod',
            'verificationMethod': 'test_verification_method',
            'proofValue': 'test_proof_value'
          }
        },
      ),
    ),
  ),
);

final credentialJson = {
  '@context': [
    'https://www.w3.org/2018/credentials/v1',
    'https://schema.affinidi.io/HITContactsV1R0.jsonld'
  ],
  'id': credentialId,
  'type': ['VerifiableCredential', credentialName],
  'issuer': 'test_issuer',
  'issuanceDate': '2024-01-01T00:00:00Z',
  'credentialSubject': {},
  'credentialSchema': {
    'id': 'test_schema_id',
    'type': 'JsonSchemaValidator2018'
  },
  'proof': {
    'type': 'test_proof_type',
    'created': '2024-01-01T00:00:00Z',
    'proofPurpose': 'assertionMethod',
    'verificationMethod': 'test_verification_method',
    'proofValue': 'test_proof_value'
  }
};

final VerifiableCredential credential =
    UniversalParser.parse(jsonEncode(credentialJson));
