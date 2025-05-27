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

  Fixtures({
    required this.iotaConfiguration,
    required this.iotaPresentationDefinition,
    required this.iotaPresentationSubmission,
    required this.verifiableCredential,
    required this.verifiablePresentation,
    required this.unsignedCredentialParams,
    required this.credentialIssuanceData,
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
  ])) {
    throw Exception(
        'Missing environment variables. Please provide IOTA_CONFIGURATION, IOTA_PRESENTATION_DEFINITION, IOTA_PRESENTATION_SUBMISSION, VERIFIABLE_CREDENTIAL, VERIFIABLE_PRESENTATION, UNSIGNED_CREDENTIAL_PARAMS, CREDENTIAL_ISSUANCE_DATA');
  }

  final iotaConfiguration = env['IOTA_CONFIGURATION']!;
  final iotaPresentationDefinition = env['IOTA_PRESENTATION_DEFINITION']!;
  final iotaPresentationSubmission = env['IOTA_PRESENTATION_SUBMISSION']!;
  final verifiableCredential = env['VERIFIABLE_CREDENTIAL']!;
  final verifiablePresentation = env['VERIFIABLE_PRESENTATION']!;
  final unsignedCredentialParams = env['UNSIGNED_CREDENTIAL_PARAMS']!;
  final credentialIssuanceData = env['CREDENTIAL_ISSUANCE_DATA']!;

  return Fixtures(
    iotaConfiguration: json.decode(iotaConfiguration),
    iotaPresentationDefinition: json.decode(iotaPresentationDefinition),
    iotaPresentationSubmission: json.decode(iotaPresentationSubmission),
    verifiableCredential: json.decode(verifiableCredential),
    verifiablePresentation: json.decode(verifiablePresentation),
    unsignedCredentialParams: json.decode(unsignedCredentialParams),
    credentialIssuanceData: json.decode(credentialIssuanceData),
  );
}
