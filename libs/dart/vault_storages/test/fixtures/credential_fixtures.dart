class CredentialFixtures {
  static Map<String, dynamic> mockVCJson() {
    return {
      '@context': ['https://www.w3.org/2018/credentials/v1'],
      'type': ['VerifiableCredential', 'TestCredential'],
      'id': 'test-vc-id',
      'issuer': 'test-issuer',
      'issuanceDate': DateTime.now().toIso8601String(),
      'credentialSubject': {'id': 'test-subject', 'name': 'Test User'}
    };
  }
}
