class ResponseFixtures {
  static const empty = <String, dynamic>{};

  static const Map<String, dynamic> credentialOffer = {
    'credential_configuration_ids': ['test_credential_id'],
    'grants': {
      'urn:ietf:params:oauth:grant-type:pre-authorized_code': {
        'pre-authorized_code': 'test_pre_auth_code',
        'tx_code': {'length': 6, 'input_mode': 'numeric'}
      }
    }
  };

  static const Map<String, dynamic> loadExpiredCredentialOffer = {
    'name': 'CredentialOfferExpiredError',
    'traceId': '1-67d194ad-6b13cd8954675bcf41ba3ad2',
    'message': 'Credential offer is expired',
    'details': <String>[]
  };

  static Map<String, dynamic> issuerMetaData(
          {required String tokenEndpoint,
          required String credentialEndpoint}) =>
      {
        'token_endpoint': tokenEndpoint,
        'credential_endpoint': credentialEndpoint,
        'return_uris': <String>[],
      };

  static Map<String, dynamic> error({required String message}) => {
        'name': 'serverError',
        'message': message,
        'details': <String>[],
      };

  static Map<String, dynamic> claimError({required String message}) => {
        'error': 'serverError',
        'error_description': message,
      };

  static const Map<String, dynamic> invalidIssuanceId = {
    'name': 'InvalidParameterError',
    'traceId': '1-67d1c46d-6be76536258621e12fd085b3',
    'message': 'Invalid parameter.',
    'details': [
      {'issue': 'Invalid issuance id'}
    ]
  };

  static const Map<String, dynamic> invalidProof = {
    'name': 'InvalidProofError',
    'traceId': '1-67d2bf84-5025f9243e85953b76b147f2',
    'message': 'The proof in the Credential Request is invalid',
    'details': [
      {'issue': 'DID of the proof does not match the DID of the holder'}
    ]
  };

  static const Map<String, dynamic> claimExpiredCredentialOffer = {
    'name': 'InvalidCredentialRequestError',
    'traceId': '1-67d2cd4a-004a85d615ed071f330d81a8',
    'message': 'Credential Request is invalid',
    'details': [
      {'issue': 'Credential offer has been expired.'}
    ]
  };

  static const Map<String, dynamic> claimCredentialOfferUnmatchedTxCodeError = {
    'error': 'tx_code does not match',
  };

  static const Map<String, dynamic> claimCredentialOfferAlreadyClaimedError = {
    'error': 'invalid_request',
    'error_description': 'Invalid status of pre-authorized statue VC_CLAIMED'
  };

  static const Map<String, dynamic> claimCredentialOfferUnknownError = {
    'error': 'unknown_error',
  };

  static const Map<String, dynamic> accessToken = {
    'access_token': 'test_access_token',
  };

  static const Map<String, dynamic> validVerifiableCredential = {
    'credential': {
      'signedCredential': {
        '@context': [
          'https://www.w3.org/2018/credentials/v1',
          'https://schema.affinidi.io/HITContactsV1R0.jsonld'
        ],
        'id': 'claimid:02-aaaaaa-aaaaaaaaaaa',
        'type': ['VerifiableCredential', 'HITContacts'],
        'holder': {
          'id': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa'
        },
        'credentialSubject': {'email': 'user@affinidi.com'},
        'credentialSchema': {
          'id': 'credentialSchemaId',
          'type': 'credentialSchemaType'
        },
        'issuanceDate': '2024-07-16T20:16:05.648',
        'expirationDate': '2024-07-18T20:16:05.648',
        'issuer': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
        'proof': {
          'type': 'EcdsaSecp256k1Signature2019',
          'created': '2024-07-16T18:16:05Z',
          'proofPurpose': 'assertionMethod',
          'verificationMethod':
              'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa#aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
          'jws':
              'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..ee19g6fjm34kb9aG_tGzVyW5-sLq6KvFTBnmOHX3ibBFrikO8xYMp3pCg1SU3gePtSnAVKzyDIfxj1xifGcQHw'
        }
      },
    }
  };
}
