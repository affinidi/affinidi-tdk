# Affinidi TDK - Claim Verifiable Credential

The Affinidi TDK - Claim Verifiable Credential package provides the libraries with the ability to find and claim Verifiable Credentials issued to users from the Credential Issuer Service.

## Key Features

- Load credential offers from URIs.
- Claim Verifiable Credentials (VCs) into your cloud profiles.
- Support for transaction code verification when claiming a VC.
- Error handling for common credential claiming scenarios.

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_claim_verifiable_credential
```

or manually add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_claim_verifiable_credential: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

For more information, visit the pub.dev install page of the Affinidi TDK - Claim Verifiable Credential package.

## Usage

After successfully installing the package, import it into your code.

```dart
import 'dart:typed_data';
import 'package:affinidi_tdk_claim_verifiable_credential/oid4vci_claim_verifiable_credential.dart';

void main() async {

  final credentialService = CredentialClaimService(
    seed: yourSeedBytes, // Uint8List containing your seed
  );
}
```

For more sample usage, go to the [example folder](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/claim_verifiable_credential/example).


## Support & feedback

If you face any issues or have suggestions, please don't hesitate to contact us using [this link](https://share.hsforms.com/1i-4HKZRXSsmENzXtPdIG4g8oa2v).

### Reporting technical issues

If you have a technical issue with the package's codebase, you can also create an issue directly in GitHub.

1. Ensure the bug was not already reported by searching on GitHub under
   [Issues](https://github.com/affinidi/affinidi-tdk/issues).

2. If you're unable to find an open issue addressing the problem,
   [open a new one](https://github.com/affinidi/affinidi-tdk/issues/new).
   Be sure to include a **title and clear description**, as much relevant information as possible,
   and a **code sample** or an **executable test case** demonstrating the expected behaviour that is not occurring.

## Contributing

Want to contribute?

Head over to our [CONTRIBUTING](https://github.com/affinidi/affinidi-tdk/blob/main/CONTRIBUTING.md) guidelines.

