# Affinidi Trust Development Kit (Affinidi TDK)

The Affinidi Trust Development Kit (Affinidi TDK) is a modern interface that allows you to easily manage and integrate Affinidi services into your application. It minimises dependencies and enables developers seamless entry into the [Affinidi Trust Network (ATN)](https://www.affinidi.com/get-started).

## Building the TDK

### Requirements

- [NodeJs v18 or higher](https://nodejs.org)
- Supported platforms
  - Linux
  - MacOS
  - Windows

### Building from Source

To build the TDK clients, run the command:

`npm run build`

The client information is generated in the [clients](clients) directory.

### Create Sample Project

To create a sample project for a package or library, run the command

`npm run create:sample`

## How do I use Affinidi TDK?

The Affinidi TDK provides [clients](clients) with endpoints as methods to access Affinidi services like KYC, IAM, Wallet, and VPA, among others.

The [packages](packages) are commonly used utilities to perform actions. For example, the `auth-provider` package can fetch the _project-scoped_ token and passed to the client to access the endpoints. You can check the sample usage [here](clients/client-aca/README.md#L47).

[Libraries](libs) provide high-level abstractions that combine logic and data to perform necessary business logic functionalities.

You can check out the README for any particular [client](clients) for sample usage, including the packages and libraries, and to understand how to integrate it into your application.

## Supported Programming Languages

The Affinidi TDK supports multiple programming languages.

## Support & Feedback

If you face any issues or have suggestions, please don't hesitate to contact us using [this link](https://share.hsforms.com/1i-4HKZRXSsmENzXtPdIG4g8oa2v).

If you have a technical issue with the Affinidi TDK's codebase, you can also [create an issue](https://github.com/affinidi/affinidi-tdk/issues) directly in GitHub.

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
Please note that this FAQ is provided for informational purposes only and is not to be considered a legal document. For the legal terms and conditions governing your use of the Affinidi TDK, please refer to our [Terms and Conditions](https://www.affinidi.com/terms-conditions)._
