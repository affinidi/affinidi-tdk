test3

# Affinidi Trust Development Kit (Affinidi TDK)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![CodeQL](https://github.com/affinidi/affinidi-tdk/actions/workflows/github-code-scanning/codeql/badge.svg?branch=main)](https://github.com/affinidi/affinidi-tdk/actions/workflows/github-code-scanning/codeql?branch=main)
[![All Contributors](https://img.shields.io/badge/all_contributors-16-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

The Affinidi Trust Development Kit (Affinidi TDK) is a modern interface that allows you to easily manage and integrate [Affinidi Elements](https://docs.affinidi.com/docs/affinidi-elements/) and [Frameworks](https://docs.affinidi.com/frameworks/iota-framework/) into your application. It minimises dependencies and enables developers to integrate seamlessly into the [Affinidi Trust Network (ATN)](https://docs.affinidi.com/docs/).

## How do I use Affinidi TDK?

The Affinidi TDK provides three types of modules:

- [Clients](clients), which offer methods to access Affinidi Elements services like Credential Issuance, Credential Verification, and Login Configurations, among others.
- [Packages](packages), which are commonly used utilities/helpers that are self-contained and composable.
- [Libraries](libs), which are high-level abstractions that combine logic and data to perform necessary business logic functionalities.

## Requirements

To use the Affinidi TDK, you must have the recommended version of the supported programming language.

| TypeScript                                                                                                 | Python                                                                                                    | Dart                                                                                                  | PHP                                                                                                 | Java                                                                                                  |
| ---------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| ![NodeJS](https://img.shields.io/badge/NodeJS-%E2%89%A5%2018.0-52a447?labelColor=555555&style=flat-square) | ![Python](https://img.shields.io/badge/Python-%E2%89%A5%203.7-52a447?labelColor=555555&style=flat-square) | ![Dart](https://img.shields.io/badge/Dart-%E2%89%A5%203.6-52a447?labelColor=555555&style=flat-square) | ![PHP](https://img.shields.io/badge/PHP-%E2%89%A5%207.4-52a447?labelColor=555555&style=flat-square) | ![Java](https://img.shields.io/badge/Java-%E2%89%A5%201.8-52a447?labelColor=555555&style=flat-square) |


## Available modules

The Affinidi TDK offers several modules depending on the type of application you are building and the programming language you are using.

### Building vault applications

If you are building a vault application that manages user's data and provides file management capability, use the following packages:

|                             | TypeScript                                                     | Python                                                         | Dart                                                                                                                                                         | PHP                                                            | Java                                                           |
| --------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------- | -------------------------------------------------------------- |
| **Packages**                |                                                                |                                                                |                                                                                                                                                              |                                                                |                                                                |
| consumer_auth_provider      | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/consumer_auth_provider)    | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| cryptography                | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/cryptography)              | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| vault_data_manager          | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/vault_data_manager)        | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| vault_edge_provider         | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/vault_edge_provider)       | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| vault_edge_drift_provider   | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/vault_edge_drift_provider) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| common                      | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/common)                    | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| test_utilities              | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/test_utilities)            | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| **Libraries**               |                                                                |                                                                |                                                                                                                                                              |                                                                |                                                                |
| vault                       | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/vault)                         | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| claim_verifiable_credential | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/claim_verifiable_credential)   | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |
| vault_flutter_utils         | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/vault_flutter_utils)           | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat) |

### Building issuer/verifier applications

If you are building a site that issues credentials or requests data from the user's vault (e.g. Affinidi Vault), use the following packages:

|                                | TypeScript                                                                                                                                                         | Python                                                                                                                                                             | Dart                                                                                                                                                             | PHP                                                                                                                                                               | Java                                                                                                                                                             |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Packages**                   |                                                                                                                                                                    |                                                                                                                                                                    |                                                                                                                                                                  |                                                                                                                                                                   |                                                                                                                                                                  |
| auth-provider                  | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/jsii/auth-provider)                   | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/jsii/auth-provider)                   | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/auth_provider)                 | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/AuthProvider)                         | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/java/auth.provider)                 |
| common                         | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/jsii/common)                          | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/jsii/common)                          | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/common)                        | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Common/)                              | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/packages/java/common)                        |
| **Clients**                    |                                                                                                                                                                    |                                                                                                                                                                    |                                                                                                                                                                  |
| credential-issuance-client     | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/typescript/credential-issuance-client) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/python/credential_issuance_client)     | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/dart/credential_issuance_client)     | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/CredentialIssuanceClient)     | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/java/credential.issuance.client)     |
| credential-verification-client | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/typescript/credential-issuance-client) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/python/credential_verification_client) | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/dart/credential_verification_client) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/CredentialVerificationClient) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/java/credential.verification.client) |
| iam-client                     | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/typescript/iam-client)                 | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/python/iam_client)                     | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/dart/iam_client)                     | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/IamClient)                    | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/java/iam.client)                     |
| iota-client                    | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/typescript/iota-client)                | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/python/iota_client)                    | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/dart/iota_client)                    | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/IotaClient)                   | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/java/iota.client)                    |
| login-configuration-client     | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/typescript/login-configuration-client) | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/python/login_configuration_client)     | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/dart/login_configuration_client)     | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/LoginConfigurationClient)     | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/java/login.configuration.client)     |
| wallets-client                 | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/typescript/wallets-client)             | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/python/wallets_client)                 | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/dart/wallets_client)                 | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/WalletsClient)                | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/java/wallets.client)                 |
| vault-data-manager-client      | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/typescript/vault-data-manager-client)  | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/python/vault_data_manager_client)      | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/dart/vault_data_manager_client)      | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/VaultDataManagerClient)       | [![◯](https://img.shields.io/badge/%E2%97%AF-FFEA00?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/clients/java/vault.data.manager.client)      |
| **Libraries**                  |                                                                                                                                                                    |                                                                                                                                                                    |                                                                                                                                                                  |
| iota-browser                   | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/libs/iota-browser)                             | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat)                                                                                                     | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat)                                                                                                   | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat)                                                                                                    | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat)                                                                                                   |
| iota-core                      | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/libs/iota-core)                                | [![◯](https://img.shields.io/badge/%E2%97%AF-52a447?style=flat)](https://github.com/affinidi/affinidi-tdk/tree/main/libs/iota-core)                                | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat)                                                                                                   | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat)                                                                                                    | ![◯](https://img.shields.io/badge/%E2%97%AF-e74c3c?style=flat)                                                                                                   |

Click on the green and yellow boxes to view the source code of each module per language.

![◯](https://img.shields.io/badge/%E2%97%AF-Supported-2ecc71?labelColor=52a447&style=flat)
![◯](https://img.shields.io/badge/%E2%97%AF-Experimental-f9e79f?labelColor=FFEA00&style=flat)
![◯](https://img.shields.io/badge/%E2%97%AF-Unsupported-ec7063?labelColor=e74c3c&style=flat)

## Published on

Affinidi publishes TDK modules to the following package repositories.

| TypeScript                                                                                                                                       | Python                                                                                                                              | Dart                                                                                                                                                | PHP                                                                                                                                                                   | Java                                                                                                                                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [![⚑](https://img.shields.io/badge/%E2%9A%91-npmjs.com-FF7139?labelColor=777777&style=flat-square)](https://www.npmjs.com/search?q=affinidi-tdk) | [![⚑](https://img.shields.io/badge/%E2%9A%91-pypi.org-FF7139?labelColor=777777&style=flat-square)](https://pypi.org/user/affinidi/) | [![⚑](https://img.shields.io/badge/%E2%9A%91-pub.dev-FF7139?labelColor=777777&style=flat-square)](https://pub.dev/publishers/affinidi.com/packages) | [![⚑](https://img.shields.io/badge/%E2%9A%91-packagist.org-FF7139?labelColor=777777&style=flat-square)](https://packagist.org/packages/affinidi-tdk/affinidi-tdk-php) | [![⚑](https://img.shields.io/badge/%E2%9A%91-central.sonatype.com-FF7139?labelColor=777777&style=flat-square&link=https://central.sonatype.com/namespace/com.affinidi.tdk)](https://central.sonatype.com/namespace/com.affinidi.tdk) |


## Documentation

Head over to our [Documentation site](https://docs.affinidi.com/dev-tools/affinidi-tdk) to know how to get started with Affinidi TDK.

Use [this document](https://docs.affinidi.com/dev-tools/affinidi-tdk/overview/#prerequisites) to learn more about how to work with Affinidi TDK, including generating the Authorisation Token and calling the methods.

To learn how to integrate Affinidi TDK and use the different modules into your application, you can explore the following:

- [Affinidi TDK Clients](https://docs.affinidi.com/dev-tools/affinidi-tdk/overview/#clients)
- [Affinidi TDK Packages](https://docs.affinidi.com/dev-tools/affinidi-tdk/overview/#packages)
- [Affinidi TDK Libraries](https://docs.affinidi.com/dev-tools/affinidi-tdk/overview/#libraries)

## Support & feedback

If you face any issues or have suggestions, please don't hesitate to contact us using [this link](https://share.hsforms.com/1i-4HKZRXSsmENzXtPdIG4g8oa2v).

### Reporting technical issues

If you have a technical issue with the Affinidi TDK's codebase, you can also create an issue directly in GitHub.

1. Ensure the bug was not already reported by searching on GitHub under
   [Issues](https://github.com/affinidi/affinidi-tdk/issues).

2. If you're unable to find an open issue addressing the problem,
   [open a new one](https://github.com/affinidi/affinidi-tdk/issues/new).
   Be sure to include a **title and clear description**, as much relevant information as possible,
   and a **code sample** or an **executable test case** demonstrating the expected behavior that is not occurring.

## Contributing

Want to contribute?

Head over to our [CONTRIBUTING](CONTRIBUTING.md) guidelines.

## FAQ

### What can I develop?

You are only limited by your imagination! Affinidi TDK is a toolbox with which you can build software applications for personal or commercial use.

### Is there anything I should not develop?

We only provide the tools - how you use them is largely up to you. We have no control over what you develop with our tools - but please use our tools responsibly!

We hope that you will not develop anything that contravenes any applicable laws or regulations. Your projects should also not infringe on Affinidi's or any third party's intellectual property (for instance, misusing other parties' data, code, logos, etc).

### What responsibilities do I have to my end-users?

Please ensure that you have in place your terms and conditions, privacy policies, and other safeguards to ensure that the projects you build are secure for your end users.

If you are processing personal data, please protect the privacy and other legal rights of your end-users and store their personal or sensitive information securely.

Some of our components would also require you to incorporate our end-user notices into your terms and conditions.

### Is Affinidi TDK free for use?

Affinidi TDK itself is free, so come onboard and experiment with our tools and see what you can build! We may bill for certain components in the future, but we will inform you beforehand.

### Is there any limit or cap to my usage of the Affinidi TDK?

We may from time to time impose limits on your use of the Affinidi TDK, such as limiting the number of API requests that you may make in a given duration. This is to ensure the smooth operation of the Affinidi TDK so that you and all our other users can have a pleasant experience as we continue to scale and improve the Affinidi TDK.

### Do I need to provide you with anything?

From time to time, we may request certain information from you to ensure that you are complying with the [Terms and Conditions](https://www.affinidi.com/terms-conditions).

### Can I share my developer's account with others?

When you create a developer's account with us, we will issue you your private login credentials. Please do not share this with anyone else, as you would be responsible for activities that happen under your account. If you have interested friends, ask them to sign up – let's build together!

### Telemetry

Affinidi collects usage data to improve our products and services. For information on what data we collect and how we use your data, please refer to our [Privacy Notice](https://www.affinidi.com/privacy-notice).

_Disclaimer:
Please note that this FAQ is provided for informational purposes only and is not to be considered a legal document. For the legal terms and conditions governing your use of the Affinidi Services, please refer to our [Terms and Conditions](https://www.affinidi.com/terms-conditions)._

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/aeffinidi"><img src="https://avatars.githubusercontent.com/u/86773100?v=4?s=100" width="100px;" alt="aeffinidi"/><br /><sub><b>aeffinidi</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=aeffinidi" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=aeffinidi" title="Documentation">📖</a> <a href="#example-aeffinidi" title="Examples">💡</a> <a href="#ideas-aeffinidi" title="Ideas, Planning, & Feedback">🤔</a> <a href="#tool-aeffinidi" title="Tools">🔧</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/rbrazhnyk"><img src="https://avatars.githubusercontent.com/u/4462680?v=4?s=100" width="100px;" alt="Roman Brazhnyk"/><br /><sub><b>Roman Brazhnyk</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=rbrazhnyk" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=rbrazhnyk" title="Documentation">📖</a> <a href="#ideas-rbrazhnyk" title="Ideas, Planning, & Feedback">🤔</a> <a href="#research-rbrazhnyk" title="Research">🔬</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/carlos-affinidi"><img src="https://avatars.githubusercontent.com/u/86779651?v=4?s=100" width="100px;" alt="Carlos Rincon"/><br /><sub><b>Carlos Rincon</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=carlos-affinidi" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=carlos-affinidi" title="Documentation">📖</a> <a href="#ideas-carlos-affinidi" title="Ideas, Planning, & Feedback">🤔</a> <a href="#maintenance-carlos-affinidi" title="Maintenance">🚧</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/linn-affinidi"><img src="https://avatars.githubusercontent.com/u/115471777?v=4?s=100" width="100px;" alt="Linn Htoo"/><br /><sub><b>Linn Htoo</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=linn-affinidi" title="Code">💻</a> <a href="#maintenance-linn-affinidi" title="Maintenance">🚧</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/maratsh"><img src="https://avatars.githubusercontent.com/u/533533?v=4?s=100" width="100px;" alt="maratsh"/><br /><sub><b>maratsh</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=maratsh" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=maratsh" title="Documentation">📖</a> <a href="#example-maratsh" title="Examples">💡</a> <a href="#ideas-maratsh" title="Ideas, Planning, & Feedback">🤔</a> <a href="#infra-maratsh" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#platform-maratsh" title="Packaging/porting to new platform">📦</a> <a href="#security-maratsh" title="Security">🛡️</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/pulkitb2"><img src="https://avatars.githubusercontent.com/u/146182581?v=4?s=100" width="100px;" alt="Pulkit Batra"/><br /><sub><b>Pulkit Batra</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=pulkitb2" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=pulkitb2" title="Documentation">📖</a> <a href="#example-pulkitb2" title="Examples">💡</a> <a href="#ideas-pulkitb2" title="Ideas, Planning, & Feedback">🤔</a> <a href="#infra-pulkitb2" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#maintenance-pulkitb2" title="Maintenance">🚧</a> <a href="#platform-pulkitb2" title="Packaging/porting to new platform">📦</a> <a href="#plugin-pulkitb2" title="Plugin/utility libraries">🔌</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/Bergmam"><img src="https://avatars.githubusercontent.com/u/4987930?v=4?s=100" width="100px;" alt="Anton Bergman"/><br /><sub><b>Anton Bergman</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=Bergmam" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=Bergmam" title="Documentation">📖</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/sureshaff"><img src="https://avatars.githubusercontent.com/u/170073177?v=4?s=100" width="100px;" alt="sureshaff"/><br /><sub><b>sureshaff</b></sub></a><br /><a href="#security-sureshaff" title="Security">🛡️</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/maindotdev"><img src="https://avatars.githubusercontent.com/u/56207234?v=4?s=100" width="100px;" alt="Sebastian Müller"/><br /><sub><b>Sebastian Müller</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=maindotdev" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=maindotdev" title="Documentation">📖</a> <a href="#research-maindotdev" title="Research">🔬</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/priyanka-affinidi"><img src="https://avatars.githubusercontent.com/u/131958705?v=4?s=100" width="100px;" alt="Priyanka Affinidi"/><br /><sub><b>Priyanka Affinidi</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=priyanka-affinidi" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=priyanka-affinidi" title="Documentation">📖</a> <a href="#research-priyanka-affinidi" title="Research">🔬</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/rohitjjw"><img src="https://avatars.githubusercontent.com/u/80765488?v=4?s=100" width="100px;" alt="rohitjjw"/><br /><sub><b>rohitjjw</b></sub></a><br /><a href="#ideas-rohitjjw" title="Ideas, Planning, & Feedback">🤔</a> <a href="#research-rohitjjw" title="Research">🔬</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/robert-affinidi"><img src="https://avatars.githubusercontent.com/u/88320072?v=4?s=100" width="100px;" alt="Robert"/><br /><sub><b>Robert</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=robert-affinidi" title="Code">💻</a> <a href="#research-robert-affinidi" title="Research">🔬</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/affrncsp"><img src="https://avatars.githubusercontent.com/u/135792176?v=4?s=100" width="100px;" alt="Francis Pineda"/><br /><sub><b>Francis Pineda</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=affrncsp" title="Code">💻</a> <a href="https://github.com/affinidi/affinidi-tdk/commits?author=affrncsp" title="Documentation">📖</a> <a href="#research-affrncsp" title="Research">🔬</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/annavaff"><img src="https://avatars.githubusercontent.com/u/130508647?v=4?s=100" width="100px;" alt="annavaff"/><br /><sub><b>annavaff</b></sub></a><br /><a href="#projectManagement-annavaff" title="Project Management">📆</a> <a href="#research-annavaff" title="Research">🔬</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/yaroslav-affinidi"><img src="https://avatars.githubusercontent.com/u/196060619?v=4?s=100" width="100px;" alt="yaroslav-affinidi"/><br /><sub><b>yaroslav-affinidi</b></sub></a><br /><a href="https://github.com/affinidi/affinidi-tdk/commits?author=yaroslav-affinidi" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/obradovicaffinidi"><img src="https://avatars.githubusercontent.com/u/187629637?v=4?s=100" width="100px;" alt="obradovicaffinidi"/><br /><sub><b>obradovicaffinidi</b></sub></a><br /><a href="#projectManagement-obradovicaffinidi" title="Project Management">📆</a> <a href="#research-obradovicaffinidi" title="Research">🔬</a></td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td align="center" size="13px" colspan="7">
        <img src="https://raw.githubusercontent.com/all-contributors/all-contributors-cli/1b8533af435da9854653492b1327a23a4dbd0a10/assets/logo-small.svg">
          <a href="https://all-contributors.js.org/docs/en/bot/usage">Add your contributions</a>
        </img>
      </td>
    </tr>
  </tfoot>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
