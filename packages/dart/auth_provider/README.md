# Affinidi TDK - Auth Provider

This package generates authorisation tokens to initialise TDK clients and access Affinidi services.

## Getting started

To access and call the methods from the clients, an access token called a **Project Scoped Token** must be generated using `affinidi_tdk_auth_provider`. This token allows developers to access and manage resources within the specific project.

The Project Scoped Token is generated per project. Using the authorisation token, application can perform actions on related resources like Login Configurations, Credential Issuance, etc.

## Requirements:

- Dart SDK version ^3.6.0

If you already have an Affinidi project(s) and a Personal Access Token (PAT), you can skip the related sections below.

### Create a Project

Login to [Affinidi Portal](https://portal.affinidi.com/login) using your [Affinidi Vault](https://docs.affinidi.com/docs/get-started/#set-up-affinidi-vault) account. On your first login, the Affinidi Portal will create a default project that you can use to create a Personal Access Token (PAT).

### Create a PAT

Following security best practices, your private key should never leave the safety of your edge device. Thus, you must create and update your PAT using the [Affinidi CLI](https://docs.affinidi.com/dev-tools/affinidi-cli/).

If you don't have Affinidi CLI installed yet, you can do it with:

```bash
npm install -g @affinidi/cli
```

Using the commands below, you can create your PAT with auto-generated private/public key pairs and access policies.

First you need to log in to Affinidi with:

```bash
affinidi start
```

> **💡NOTE:** Although there is an option to generate a key pair and encrypt your private key with a passphrase, we don't support this for Dart yet.

To create a PAT run:

```bash
affinidi token create-token -n MyNewToken -g -w --no-input
```

As a result, you will get `tokenId`, `projectId`, and `privateKey`. These are the exact inputs required to initialise the AuthProvider.

## AuthProvider sample usage

Initialise AuthProvider with your PAT credentials, and you can use it with TDK clients (e.g., Wallets client).

### Install required dependencies

```bash
dart pub add affinidi_tdk_auth_provider affinidi_tdk_wallets_client
```

> This example defines the Personal Access Token (PAT) credentials inside the env file.

For a better developer experience, we initialise TDK clients with `authTokenHook`, which will refresh the auth token on your behalf once it is expired.

### Initialise and call the client method

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

  // Now we can initialise clients using AuthProvider

  final apiClient = AffinidiTdkWalletsClient(authTokenHook: authProvider.fetchProjectScopedToken);
  final walletApi = apiClient.getWalletApi();

  final response = await walletApi.listWallets();

  // ...
}
```
