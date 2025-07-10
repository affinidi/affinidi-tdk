## @affinidi-tdk/credential-issuance-client@1.39.1

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
npm install @affinidi-tdk/credential-issuance-client@1.39.1 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Class              | Method                                                                                            | HTTP request                                                                                | Description                                           |
| ------------------ | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| _ConfigurationApi_ | [**createIssuanceConfig**](docs/ConfigurationApi.md#createissuanceconfig)                         | **POST** /v1/configurations                                                                 |
| _ConfigurationApi_ | [**deleteIssuanceConfigById**](docs/ConfigurationApi.md#deleteissuanceconfigbyid)                 | **DELETE** /v1/configurations/{configurationId}                                             |
| _ConfigurationApi_ | [**getIssuanceConfigById**](docs/ConfigurationApi.md#getissuanceconfigbyid)                       | **GET** /v1/configurations/{configurationId}                                                |
| _ConfigurationApi_ | [**getIssuanceConfigList**](docs/ConfigurationApi.md#getissuanceconfiglist)                       | **GET** /v1/configurations                                                                  |
| _ConfigurationApi_ | [**updateIssuanceConfigById**](docs/ConfigurationApi.md#updateissuanceconfigbyid)                 | **PUT** /v1/configurations/{configurationId}                                                |
| _CredentialsApi_   | [**batchCredential**](docs/CredentialsApi.md#batchcredential)                                     | **POST** /v1/{projectId}/batch_credential                                                   | Allows wallets to claim multiple credentials at once. |
| _CredentialsApi_   | [**generateCredentials**](docs/CredentialsApi.md#generatecredentials)                             | **POST** /v1/{projectId}/credential                                                         |
| _CredentialsApi_   | [**getClaimedCredentials**](docs/CredentialsApi.md#getclaimedcredentials)                         | **GET** /v1/{projectId}/configurations/{configurationId}/credentials                        | Get claimed credential in the specified range         |
| _CredentialsApi_   | [**getIssuanceIdClaimedCredential**](docs/CredentialsApi.md#getissuanceidclaimedcredential)       | **GET** /v1/{projectId}/configurations/{configurationId}/issuances/{issuanceId}/credentials | Get claimed VC linked to the issuanceId               |
| _DefaultApi_       | [**changeCredentialStatus**](docs/DefaultApi.md#changecredentialstatus)                           | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status            | change credential status.                             |
| _DefaultApi_       | [**listIssuanceDataRecords**](docs/DefaultApi.md#listissuancedatarecords)                         | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records     | List records                                          |
| _IssuanceApi_      | [**issuanceState**](docs/IssuanceApi.md#issuancestate)                                            | **GET** /v1/{projectId}/issuance/state/{issuanceId}                                         |
| _IssuanceApi_      | [**issueCredentials**](docs/IssuanceApi.md#issuecredentials)                                      | **POST** /v1/{projectId}/credential/issue                                                   |
| _IssuanceApi_      | [**listIssuance**](docs/IssuanceApi.md#listissuance)                                              | **GET** /v1/{projectId}/issuance                                                            |
| _IssuanceApi_      | [**startIssuance**](docs/IssuanceApi.md#startissuance)                                            | **POST** /v1/{projectId}/issuance/start                                                     |
| _OfferApi_         | [**getCredentialOffer**](docs/OfferApi.md#getcredentialoffer)                                     | **GET** /v1/{projectId}/offers/{issuanceId}                                                 |
| _WellKnownApi_     | [**getWellKnownOpenIdCredentialIssuer**](docs/WellKnownApi.md#getwellknownopenidcredentialissuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer                                |

### Documentation For Models

- [ActionForbiddenError](docs/ActionForbiddenError.md)
- [ActionForbiddenErrorDetailsInner](docs/ActionForbiddenErrorDetailsInner.md)
- [BatchCredentialInput](docs/BatchCredentialInput.md)
- [BatchCredentialInputCredentialRequestsInner](docs/BatchCredentialInputCredentialRequestsInner.md)
- [BatchCredentialResponse](docs/BatchCredentialResponse.md)
- [BatchCredentialResponseCredentialResponsesInner](docs/BatchCredentialResponseCredentialResponsesInner.md)
- [ChangeCredentialStatus400Response](docs/ChangeCredentialStatus400Response.md)
- [ChangeCredentialStatusInput](docs/ChangeCredentialStatusInput.md)
- [ChangeStatusForbiddenError](docs/ChangeStatusForbiddenError.md)
- [CisConfigurationWebhookSetting](docs/CisConfigurationWebhookSetting.md)
- [CisConfigurationWebhookSettingEndpoint](docs/CisConfigurationWebhookSettingEndpoint.md)
- [ClaimedCredentialListResponse](docs/ClaimedCredentialListResponse.md)
- [ClaimedCredentialResponse](docs/ClaimedCredentialResponse.md)
- [CorsBatchCredentialOK](docs/CorsBatchCredentialOK.md)
- [CorsGenerateCredentialsOK](docs/CorsGenerateCredentialsOK.md)
- [CorsGetClaimedCredentialsOK](docs/CorsGetClaimedCredentialsOK.md)
- [CorsGetCredentialOfferOK](docs/CorsGetCredentialOfferOK.md)
- [CorsGetIssuanceIdClaimedCredentialOK](docs/CorsGetIssuanceIdClaimedCredentialOK.md)
- [CorsGetWellKnownOpenIdCredentialIssuerOK](docs/CorsGetWellKnownOpenIdCredentialIssuerOK.md)
- [CreateCredentialInput](docs/CreateCredentialInput.md)
- [CreateIssuanceConfig400Response](docs/CreateIssuanceConfig400Response.md)
- [CreateIssuanceConfigInput](docs/CreateIssuanceConfigInput.md)
- [CredentialIssuanceIdExistError](docs/CredentialIssuanceIdExistError.md)
- [CredentialOfferClaimedError](docs/CredentialOfferClaimedError.md)
- [CredentialOfferExpiredError](docs/CredentialOfferExpiredError.md)
- [CredentialOfferResponse](docs/CredentialOfferResponse.md)
- [CredentialOfferResponseGrants](docs/CredentialOfferResponseGrants.md)
- [CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode](docs/CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.md)
- [CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode](docs/CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode.md)
- [CredentialProof](docs/CredentialProof.md)
- [CredentialResponse](docs/CredentialResponse.md)
- [CredentialResponseDeferred](docs/CredentialResponseDeferred.md)
- [CredentialResponseImmediate](docs/CredentialResponseImmediate.md)
- [CredentialResponseImmediateCNonceExpiresIn](docs/CredentialResponseImmediateCNonceExpiresIn.md)
- [CredentialResponseImmediateCredential](docs/CredentialResponseImmediateCredential.md)
- [CredentialSubjectNotValidError](docs/CredentialSubjectNotValidError.md)
- [CredentialSupportedObject](docs/CredentialSupportedObject.md)
- [DeferredCredentialInput](docs/DeferredCredentialInput.md)
- [FlowData](docs/FlowData.md)
- [FlowDataStatusListsDetailsInner](docs/FlowDataStatusListsDetailsInner.md)
- [GenerateCredentials400Response](docs/GenerateCredentials400Response.md)
- [GetCredentialOffer400Response](docs/GetCredentialOffer400Response.md)
- [InvalidCredentialRequestError](docs/InvalidCredentialRequestError.md)
- [InvalidCredentialTypeError](docs/InvalidCredentialTypeError.md)
- [InvalidIssuerWalletError](docs/InvalidIssuerWalletError.md)
- [InvalidJwtTokenError](docs/InvalidJwtTokenError.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [InvalidProofError](docs/InvalidProofError.md)
- [IssuanceConfigDto](docs/IssuanceConfigDto.md)
- [IssuanceConfigListResponse](docs/IssuanceConfigListResponse.md)
- [IssuanceConfigMiniDto](docs/IssuanceConfigMiniDto.md)
- [IssuanceStateResponse](docs/IssuanceStateResponse.md)
- [ListIssuanceRecordResponse](docs/ListIssuanceRecordResponse.md)
- [ListIssuanceResponse](docs/ListIssuanceResponse.md)
- [ListIssuanceResponseIssuancesInner](docs/ListIssuanceResponseIssuancesInner.md)
- [MissingHolderDidError](docs/MissingHolderDidError.md)
- [NotFoundError](docs/NotFoundError.md)
- [ProjectCredentialConfigExistError](docs/ProjectCredentialConfigExistError.md)
- [ProjectCredentialConfigNotExistError](docs/ProjectCredentialConfigNotExistError.md)
- [RevocationForbiddenError](docs/RevocationForbiddenError.md)
- [StartIssuance400Response](docs/StartIssuance400Response.md)
- [StartIssuanceInput](docs/StartIssuanceInput.md)
- [StartIssuanceInputDataInner](docs/StartIssuanceInputDataInner.md)
- [StartIssuanceInputDataInnerMetaData](docs/StartIssuanceInputDataInnerMetaData.md)
- [StartIssuanceInputDataInnerStatusListDetailsInner](docs/StartIssuanceInputDataInnerStatusListDetailsInner.md)
- [StartIssuanceResponse](docs/StartIssuanceResponse.md)
- [SupportedCredentialMetadata](docs/SupportedCredentialMetadata.md)
- [SupportedCredentialMetadataDisplayInner](docs/SupportedCredentialMetadataDisplayInner.md)
- [SupportedCredentialMetadataItemLogo](docs/SupportedCredentialMetadataItemLogo.md)
- [UpdateIssuanceConfigInput](docs/UpdateIssuanceConfigInput.md)
- [VcClaimedError](docs/VcClaimedError.md)
- [WellKnownOpenIdCredentialIssuerResponse](docs/WellKnownOpenIdCredentialIssuerResponse.md)
- [WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner](docs/WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner.md)
- [WellKnownOpenIdCredentialIssuerResponseDisplay](docs/WellKnownOpenIdCredentialIssuerResponseDisplay.md)
- [WellKnownOpenIdCredentialIssuerResponseDisplayLogo](docs/WellKnownOpenIdCredentialIssuerResponseDisplayLogo.md)

<a id="documentation-for-authorization"></a>

## Documentation For Authorization

Authentication schemes defined for the API:
<a id="AwsSigV4"></a>

### AwsSigV4

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

<a id="ApiKey"></a>

### ApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

<a id="bearerAuth"></a>

### bearerAuth

- **Type**: Bearer authentication (JWT)

<a id="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a id="UserTokenAuth"></a>

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a id="ProjectTokenAuth"></a>

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a id="HeritageTokenAuth"></a>

### HeritageTokenAuth

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
import {
  SomeClassApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({ tokenId, privateKey, projectId })

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  }),
)

await api.oneOfMethods()
```
