## @affinidi-tdk/wallets-client@1.33.0

This generator creates TypeScript/JavaScript client that utilizes [axios](https://github.com/axios/axios). The generated Node module can be used in the following environments:

Environment

- Node.js
- Webpack
- Browserify

Language level

- ES5 - you must have a Promises/A+ library installed
- ES6

Module system

- CommonJS
- ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))

### Building

To build and compile the typescript sources to javascript use:

```
npm install
npm run build
```

### Publishing

First build the package then run `npm publish`

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install @affinidi-tdk/wallets-client@1.33.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Class           | Method                                                                                   | HTTP request                                                                       | Description                        |
| --------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| _RevocationApi_ | [**getRevocationCredentialStatus**](docs/RevocationApi.md#getrevocationcredentialstatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |
| _RevocationApi_ | [**getRevocationListCredential**](docs/RevocationApi.md#getrevocationlistcredential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| _RevocationApi_ | [**revokeCredential**](docs/RevocationApi.md#revokecredential)                           | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |
| _WalletApi_     | [**createWallet**](docs/WalletApi.md#createwallet)                                       | **POST** /v1/wallets                                                               |
| _WalletApi_     | [**deleteWallet**](docs/WalletApi.md#deletewallet)                                       | **DELETE** /v1/wallets/{walletId}                                                  |
| _WalletApi_     | [**getWallet**](docs/WalletApi.md#getwallet)                                             | **GET** /v1/wallets/{walletId}                                                     |
| _WalletApi_     | [**listWallets**](docs/WalletApi.md#listwallets)                                         | **GET** /v1/wallets                                                                |
| _WalletApi_     | [**signCredential**](docs/WalletApi.md#signcredential)                                   | **POST** /v1/wallets/{walletId}/sign-credential                                    |
| _WalletApi_     | [**signJwtToken**](docs/WalletApi.md#signjwttoken)                                       | **POST** /v1/wallets/{walletId}/sign-jwt                                           |
| _WalletApi_     | [**updateWallet**](docs/WalletApi.md#updatewallet)                                       | **PATCH** /v1/wallets/{walletId}                                                   |

### Documentation For Models

- [CreateWalletInput](docs/CreateWalletInput.md)
- [CreateWalletResponse](docs/CreateWalletResponse.md)
- [CreateWalletV2Input](docs/CreateWalletV2Input.md)
- [CreateWalletV2Response](docs/CreateWalletV2Response.md)
- [EntityNotFoundError](docs/EntityNotFoundError.md)
- [GetRevocationCredentialStatusOK](docs/GetRevocationCredentialStatusOK.md)
- [GetRevocationListCredentialResultDto](docs/GetRevocationListCredentialResultDto.md)
- [InvalidDidParameterError](docs/InvalidDidParameterError.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [KeyNotFoundError](docs/KeyNotFoundError.md)
- [NotFoundError](docs/NotFoundError.md)
- [OperationForbiddenError](docs/OperationForbiddenError.md)
- [RevokeCredentialInput](docs/RevokeCredentialInput.md)
- [ServiceErrorResponse](docs/ServiceErrorResponse.md)
- [ServiceErrorResponseDetailsInner](docs/ServiceErrorResponseDetailsInner.md)
- [SignCredential400Response](docs/SignCredential400Response.md)
- [SignCredentialInputDto](docs/SignCredentialInputDto.md)
- [SignCredentialInputDtoUnsignedCredentialParams](docs/SignCredentialInputDtoUnsignedCredentialParams.md)
- [SignCredentialResultDto](docs/SignCredentialResultDto.md)
- [SignCredentialsDm1LdInputDto](docs/SignCredentialsDm1LdInputDto.md)
- [SignCredentialsDm1LdResultDto](docs/SignCredentialsDm1LdResultDto.md)
- [SignCredentialsDm2SdJwtInputDto](docs/SignCredentialsDm2SdJwtInputDto.md)
- [SignCredentialsDm2SdJwtResultDto](docs/SignCredentialsDm2SdJwtResultDto.md)
- [SignCredentialsJwtInputDto](docs/SignCredentialsJwtInputDto.md)
- [SignCredentialsJwtResultDto](docs/SignCredentialsJwtResultDto.md)
- [SignCredentialsLdpInputDto](docs/SignCredentialsLdpInputDto.md)
- [SignCredentialsLdpResultDto](docs/SignCredentialsLdpResultDto.md)
- [SignJwtToken](docs/SignJwtToken.md)
- [SignJwtTokenOK](docs/SignJwtTokenOK.md)
- [SignPresentationLdpInputDto](docs/SignPresentationLdpInputDto.md)
- [SignPresentationLdpResultDto](docs/SignPresentationLdpResultDto.md)
- [SigningFailedError](docs/SigningFailedError.md)
- [UpdateWalletInput](docs/UpdateWalletInput.md)
- [WalletDto](docs/WalletDto.md)
- [WalletDtoKeysInner](docs/WalletDtoKeysInner.md)
- [WalletV2Dto](docs/WalletV2Dto.md)
- [WalletsListDto](docs/WalletsListDto.md)

<a id="documentation-for-authorization"></a>

## Documentation For Authorization

Authentication schemes defined for the API:
<a id="ProjectTokenAuth"></a>

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

#### Obtaining auth token

💡 To create personal access token (PAT), use Affinidi CLI's [create-token](https://github.com/affinidi/affinidi-cli/blob/main/docs/token.md#affinidi-token-create-token) command.

Login to your Affinidi Vault.

```bash
affinidi login
```

Check for command details if you want to set optional passphrase and keyId:

```bash
affinidi token --help
```

Create PAT:

```bash
affinidi token create-token -n YourTokenName -g -w --no-input
```

This command will return you variables to initialize AuthProvider as required below.

```ts
import { SomeClassApi, Configuration } from '@affinidi-tdk/wallets-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({ tokenId, privateKey, projectId })

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  }),
)

await api.oneOfMethods()
```
