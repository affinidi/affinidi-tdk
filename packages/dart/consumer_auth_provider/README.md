# Affinidi TDK - Consumer Auth Provider

The Affinidi TDK - Consumer Auth Provider package provides the libraries to authenticate consumers and generate the required consumer token to access vault services securely. It exchanges an encrypted seed and encryption key for a consumer token to authenticate API requests like the Affinidi TDK - Vault Data Manager client.

*This package is still in **EXPERIMENTAL** status.* 

> **IMPORTANT:**
> This project does not collect or process any personal data. However, when used as part of a broader system or application that handles personally identifiable information (PII), users are responsible for ensuring that any such use complies with applicable privacy laws and data protection obligations.

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add consumer_auth_provider
```

or manually add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  consumer_auth_provider: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

For more information, visit the pub.dev install page of the Affinidi TDK - Consumer Auth Provider package.

## Usage

After successfully installing the package, import it into your code.

```dart
import 'package:consumer_auth_provider/consumer_auth_provider.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

void main() async {

    final consumerAuthProvider = ConsumerAuthProvider(signer: didSigner);

    // Actual Consumer client that accepts a hook for
    // the token which requires a separate import
    final apiClient = AffinidiTdkVaultDataManagerClient(
        authTokenHook: consumerAuthProvider.fetchConsumerToken, // getting the token from the provider
    );
}
```

For more sample usage, go to the [example folder](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart).


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
