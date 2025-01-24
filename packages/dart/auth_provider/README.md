# Affinidi TDK Auth Provider

This package is used to generate authorization tokens to initialize TDK clients to access Affinidi services.

## Getting started

To access and call the methods from the clients, an access token called Project Scoped Token, must be generated using affinidi_tdk_auth_provider. This token allows developers to access and manage resources within the specific project.

The Project Scoped Token is generated per project and using this token the application can perform actions to the related resources like Login Configurations, Credential Issuance, etc.

## Pre-requisites:

Dart SDK version ^3.6.0

If you already have Affinidi project(s) and Personal Access Token (PAT) you can skip related sections below.

### Create a Project

Login to [Affinidi Portal](https://portal.affinidi.com/login) using your [Affinidi Vault](https://docs.affinidi.com/docs/get-started/#set-up-affinidi-vault) account. On your first login, the Affinidi Portal will create a default project that you can use to create a Personal Access Token (PAT).

### Create a PAT

💡NOTE: Following security best-practices, your private key should never leave the safety of your edge device, thus you must create and update your PAT using the [Affinidi CLI](https://docs.affinidi.com/dev-tools/affinidi-cli/).

If you don't have Affinidi CLI installed yet, you can do it with

```bash
npm install -g @affinidi/cli
```

With commands below you can create your PAT with auto-generated private/public key pair and access policy.

At first you need to login to Affinidi with

```bash
affinidi start
```

💡NOTE: Although there is an option to generate key pair and encrypt your private key with a passphrase, we don't support this for Dart yet.

To create PAT run

```bash
affinidi token create-token -n MyNewToken -g -w --no-input
```

As a result you will get `tokenId`, `projectId` and `privateKey`. Those are the exact inputs required to initialize the AuthProvier.

## AuthProvider initialization

Initialize AuthProvider with your PAT credentials and you can use it with TDK clients (f.e. wallets client).

💡NOTE: For better developer experience, we initialize TDK clients with `authTokenHook` which will refresh auth token on your behalf once it is expired.

```bash
dart pub add affinidi_tdk_auth_provider affinidi_tdk_wallets_client
```

```dart
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';
import 'package:dotenv/dotenv.dart';

void main() async {
  final env = DotEnv()..load();

  final provider = AuthProvider(
    projectId: env['PROJECT_ID']!,
    tokenId: env['TOKEN_ID']!,
    privateKey: env['PRIVATE_KEY']!.replaceAll('\\n', '\n'), // Workaround for dotenv multiline limitations
  );

  // Now we can initialize clients using AuthProvider

  final apiClient = AffinidiTdkWalletsClient(authTokenHook: authProvider.fetchProjectScopedToken);
  final walletApi = apiClient.getWalletApi();

  final response = await walletApi.listWallets();

  // ...
}
```

## Contributing

When contributing to this package, please first discuss the change you wish to make by creating a new [GitHub issue](https://github.com/affinidi/affinidi-tdk/issues/new).

NOTE: Clients are generated intenally by Affinidi based on our API's. So, please don't update the client code and instead create an issue.

Visit our Developer Portal to [know more](https://docs.affinidi.com/dev-tools).