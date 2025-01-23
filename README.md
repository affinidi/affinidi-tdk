# Affinidi Trust Development Kit (Affinidi TDK)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-15-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

The Affinidi Trust Development Kit (Affinidi TDK) is a modern interface that allows you to easily manage and integrate [Affinidi Elements](https://www.affinidi.com/product/affinidi-elements) and [Frameworks](https://www.affinidi.com/developer#lota-framework) into your application. It minimises dependencies and enables developers seamless entry into the [Affinidi Trust Network (ATN)](https://www.affinidi.com/get-started).

## How do I use Affinidi TDK?

The Affinidi TDK provides three type of modules:

- [Clients](clients), which offer methods to access Affinidi Elements services like Credential Issuance, Credential Verification, and Login Configurations, among others.
- [Packages](packages), which are commonly used utilities/helpers that are self-contained and composable.
- [Libraries](libs), which are high-level abstractions that combine logic and data to perform necessary business logic functionalities.

Each module has its own README that you can check to better understand how to integrate it into your application.

## Available modules

The Affinidi TDK offers several modules depending on the type of application you are using and the programming language.

### For vault applications

If you are building a vault application that manages user's data, you will be interested in the following packages:

|                           | TypeScript                                               | Dart                                               |
| ------------------------- | -------------------------------------------------------- | -------------------------------------------------- |
| **Packages**              |                                                          |                                                    |
| consumer-auth-provider    | 🔴                                                       | [🟡 Link](packages/dart/consumer_auth_provider/)   |
| **Clients**               |                                                          |                                                    |
| vault-data-manager-client | [🟡 Link](clients/typescript/vault-data-manager-client/) | [🟡 Link](clients/dart/vault_data_manager_client/) |

### For issuer/verifier applications

If you are building a site that issues or requests data from the user vaults you will be interested in the following packages:

|                                | TypeScript                                                    | Python                                                    | Dart                                                    | PHP                                                                                                        |
| ------------------------------ | ------------------------------------------------------------- | --------------------------------------------------------- | ------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| **Packages**                   |                                                               |                                                           |                                                         |
| auth-provider                  | [🟢 Link](packages/jsii/auth-provider/)                       | 🟢                                                        | [🟡 Link](packages/dart/auth_provider/)                 | [🟢 Link](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/AuthProvider)                         |
| common                         | [🟢 Link](packages/jsii/common/)                              | 🟢                                                        | 🔴                                                      | [🟢 Link](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Common)                               |
| **Clients**                    |                                                               |                                                           |                                                         |
| credential-issuance-client     | [🟢 Link](clients/typescript/credential-issuance-client/)     | [🟢 Link](clients/python/credential_issuance_client/)     | [🟡 Link](clients/dart/credential_issuance_client/)     | [🟢 Link](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/CredentialIssuanceClient)     |
| credential-verification-client | [🟢 Link](clients/typescript/credential-verification-client/) | [🟢 Link](clients/python/credential_verification_client/) | [🟡 Link](clients/dart/credential_verification_client/) | [🟢 Link](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/CredentialVerificationClient) |
| iam-client                     | [🟢 Link](clients/typescript/iam-client/)                     | [🟢 Link](clients/python/iam_client/)                     | [🟡 Link](clients/dart/iam_client/)                     | [🟢 Link](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/IamClient)                    |
| iota-client                    | [🟢 Link](clients/typescript/iota-client/)                    | [🟢 Link](clients/python/iota_client/)                    | [🟡 Link](clients/dart/iota_client/)                    | [🟢 Link](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/IotaClient)                   |
| login-configuration-client     | [🟢 Link](clients/typescript/login-configuration-client/)     | [🟢 Link](clients/python/login_configuration_client/)     | [🟡 Link](clients/dart/login_configuration_client/)     | [🟢 Link](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/LoginConfigurationClient)     |
| wallets-client                 | [🟢 Link](clients/typescript/wallets-client/)                 | [🟢 Link](clients/python/wallets_client/)                 | [🟡 Link](clients/dart/wallets_client/)                 | [🟢 Link](https://github.com/affinidi/affinidi-tdk-php/tree/main/src/Clients/WalletsClient)                |
| **Libraries**                  |                                                               |                                                           |                                                         |
| iota-browser                   | [🟢 Link](libs/iota-browser/)                                 | 🔴                                                        | 🔴                                                      | 🔴                                                                                                         |
| iota-core                      | [🟢 Link](libs/iota-core/)                                    | 🟢                                                        | 🔴                                                      | 🔴                                                                                                         |

<br />
🟢 Supported <br />
🟡 Experimental <br />
🔴 Not supported

## Documentation

Head over to our [Documentation site](https://docs.affinidi.com/dev-tools/affinidi-tdk) to know how to get started with Affinidi TDK.

Use [this document](https://docs.affinidi.com/dev-tools/affinidi-tdk/#working-with-the-affinidi-tdk) to learn more about how to work with Affinidi TDK, including generating the Authorisation Token and calling the methods.

To learn how to integrate Affinidi TDK and use the different modules into your application, you can explore the following:

- [Affinidi TDK Clients](https://docs.affinidi.com/dev-tools/affinidi-tdk/clients/)
- [Affinidi TDK Libraries](https://docs.affinidi.com/dev-tools/affinidi-tdk/libraries/)
- [Affinidi TDK Packages](https://docs.affinidi.com/dev-tools/affinidi-tdk/packages/)

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
