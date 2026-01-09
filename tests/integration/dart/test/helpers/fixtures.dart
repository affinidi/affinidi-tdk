import 'dart:convert';
import 'package:dotenv/dotenv.dart';

class Fixtures {
  final Map<String, dynamic> iotaConfiguration;
  final Map<String, dynamic> iotaPresentationDefinition;
  final Map<String, dynamic> iotaPresentationSubmission;
  final Map<String, dynamic> verifiableCredential;
  final Map<String, dynamic> verifiablePresentation;
  final Map<String, dynamic> unsignedCredentialParams;
  final Map<String, dynamic> credentialIssuanceData;

  // v2 fixtures
  final Map<String, dynamic> unsignedCredentialV2;
  final Map<String, dynamic> disclosureFrameV2;
  final String jwtCredentialV2;

  Fixtures({
    required this.iotaConfiguration,
    required this.iotaPresentationDefinition,
    required this.iotaPresentationSubmission,
    required this.verifiableCredential,
    required this.verifiablePresentation,
    required this.unsignedCredentialParams,
    required this.credentialIssuanceData,
    required this.unsignedCredentialV2,
    required this.disclosureFrameV2,
    required this.jwtCredentialV2,
  });
}

Fixtures getFixtures() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined([
    'IOTA_CONFIGURATION',
    'IOTA_PRESENTATION_DEFINITION',
    'IOTA_PRESENTATION_SUBMISSION',
    'VERIFIABLE_CREDENTIAL',
    'VERIFIABLE_PRESENTATION',
    'UNSIGNED_CREDENTIAL_PARAMS',
    'CREDENTIAL_ISSUANCE_DATA',
    'UNSIGNED_CREDENTIAL_V2',
    'DISCLOSURE_FRAME_V2',
    'JWT_CREDENTIAL_V2',
  ])) {
    throw Exception(
        'Missing environment variables. Please provide IOTA_CONFIGURATION, IOTA_PRESENTATION_DEFINITION, IOTA_PRESENTATION_SUBMISSION, VERIFIABLE_CREDENTIAL, VERIFIABLE_PRESENTATION, UNSIGNED_CREDENTIAL_PARAMS, CREDENTIAL_ISSUANCE_DATA, UNSIGNED_CREDENTIAL_V2, DISCLOSURE_FRAME_V2, JWT_CREDENTIAL_V2');
  }

  final iotaConfiguration = env['IOTA_CONFIGURATION']!;
  final iotaPresentationDefinition = env['IOTA_PRESENTATION_DEFINITION']!;
  final iotaPresentationSubmission = env['IOTA_PRESENTATION_SUBMISSION']!;
  final verifiableCredential = env['VERIFIABLE_CREDENTIAL']!;
  final verifiablePresentation = env['VERIFIABLE_PRESENTATION']!;
  final unsignedCredentialParams = env['UNSIGNED_CREDENTIAL_PARAMS']!;
  final credentialIssuanceData = env['CREDENTIAL_ISSUANCE_DATA']!;
  final unsignedCredentialV2 = env['UNSIGNED_CREDENTIAL_V2']!;
  final disclosureFrameV2 = env['DISCLOSURE_FRAME_V2']!;
  final jwtCredentialV2 = env['JWT_CREDENTIAL_V2']!;

  return Fixtures(
    iotaConfiguration: json.decode(iotaConfiguration),
    iotaPresentationDefinition: json.decode(iotaPresentationDefinition),
    iotaPresentationSubmission: json.decode(iotaPresentationSubmission),
    verifiableCredential: json.decode(verifiableCredential),
    verifiablePresentation: json.decode(verifiablePresentation),
    unsignedCredentialParams: json.decode(unsignedCredentialParams),
    credentialIssuanceData: json.decode(credentialIssuanceData),
    unsignedCredentialV2: json.decode(unsignedCredentialV2),
    disclosureFrameV2: json.decode(disclosureFrameV2),
    jwtCredentialV2: jwtCredentialV2,
  );
}
