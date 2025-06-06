import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';

import '../fixtures/credential_fixtures.dart';

class MockVerifiableCredential extends Mock implements VerifiableCredential {
  @override
  Uri get id => Uri.parse('test-vc-id');

  @override
  Set<String> get type => {'VerifiableCredential', 'TestCredential'};

  @override
  Map<String, dynamic> toJson() => CredentialFixtures.mockVCJson();
}
