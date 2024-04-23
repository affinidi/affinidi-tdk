# Documentation for CredentialIssuanceService

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to _http://localhost_

| Class              | Method                                                                                            | HTTP request                                                 | Description                                                                                                                                                                                                            |
| ------------------ | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| _ConfigurationApi_ | [**createIssuanceConfig**](Apis/ConfigurationApi.md#createissuanceconfig)                         | **POST** /v1/configuration                                   | Create issuance configuration, project have only one configuration                                                                                                                                                     |
| _ConfigurationApi_ | [**deleteIssuanceConfig**](Apis/ConfigurationApi.md#deleteissuanceconfig)                         | **DELETE** /v1/configuration                                 | Delete project issuance configuration                                                                                                                                                                                  |
| _ConfigurationApi_ | [**getIssuanceConfig**](Apis/ConfigurationApi.md#getissuanceconfig)                               | **GET** /v1/configuration                                    | Get issuance configuration for my selected project                                                                                                                                                                     |
| _ConfigurationApi_ | [**updateIssuanceConfig**](Apis/ConfigurationApi.md#updateissuanceconfig)                         | **PUT** /v1/configuration                                    | Update issuance configuration                                                                                                                                                                                          |
| _CredentialsApi_   | [**deferredCredentials**](Apis/CredentialsApi.md#deferredcredentials)                             | **POST** /v1/{projectId}/deferred_credential                 | Get deferred credential by `transaction_id`                                                                                                                                                                            |
| _CredentialsApi_   | [**generateCredentials**](Apis/CredentialsApi.md#generatecredentials)                             | **POST** /v1/{projectId}/credential                          | Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials |
| _IssuanceApi_      | [**issuanceState**](Apis/IssuanceApi.md#issuancestate)                                            | **GET** /v1/{projectId}/issuance/state/{issuanceId}          | Get issuance status                                                                                                                                                                                                    |
| _IssuanceApi_      | [**listIssuance**](Apis/IssuanceApi.md#listissuance)                                              | **GET** /v1/issuance                                         | List all issuances for Project                                                                                                                                                                                         |
| _IssuanceApi_      | [**startIssuance**](Apis/IssuanceApi.md#startissuance)                                            | **POST** /v1/{projectId}/issuance/start                      | Endpoint used b websites to start the issuance process                                                                                                                                                                 |
| _OfferApi_         | [**getCredentialOffer**](Apis/OfferApi.md#getcredentialoffer)                                     | **GET** /v1/{projectId}/offer/{issuanceId}                   | Endpoint used to return Credential Offer details, used with `credential_offer_uri` response                                                                                                                            |
| _WellKnownApi_     | [**getWellKnownOpenIdCredentialIssuer**](Apis/WellKnownApi.md#getwellknownopenidcredentialissuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer |                                                                                                                                                                                                                        |

<a name="documentation-for-models"></a>

## Documentation for Models

- [ActionForbiddenError](./Models/ActionForbiddenError.md)
- [ActionForbiddenError_details_inner](./Models/ActionForbiddenError_details_inner.md)
- [CreateCredentialInput](./Models/CreateCredentialInput.md)
- [CreateIssuanceConfigInput](./Models/CreateIssuanceConfigInput.md)
- [CreateIssuanceConfigInput_credentialSupported_inner](./Models/CreateIssuanceConfigInput_credentialSupported_inner.md)
- [CredentialOfferResponse](./Models/CredentialOfferResponse.md)
- [CredentialOfferResponse_grants](./Models/CredentialOfferResponse_grants.md)
- [CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code](./Models/CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.md)
- [CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code](./Models/CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.md)
- [CredentialProof](./Models/CredentialProof.md)
- [CredentialResponse](./Models/CredentialResponse.md)
- [CredentialResponseDeferred](./Models/CredentialResponseDeferred.md)
- [CredentialResponseImmediate](./Models/CredentialResponseImmediate.md)
- [DeferredCredentialInput](./Models/DeferredCredentialInput.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [IssuanceConfig](./Models/IssuanceConfig.md)
- [IssuanceStateResponse](./Models/IssuanceStateResponse.md)
- [ListIssuanceResponse](./Models/ListIssuanceResponse.md)
- [NotFoundError](./Models/NotFoundError.md)
- [StartIssuanceInput](./Models/StartIssuanceInput.md)
- [StartIssuanceInput_data](./Models/StartIssuanceInput_data.md)
- [StartIssuanceResponse](./Models/StartIssuanceResponse.md)
- [UpdateIssuanceConfigInput](./Models/UpdateIssuanceConfigInput.md)
- [WellKnownOpenIdCredentialIssuerResponse](./Models/WellKnownOpenIdCredentialIssuerResponse.md)

<a name="documentation-for-authorization"></a>

## Documentation for Authorization

<a name="AwsSigV4"></a>

### AwsSigV4

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

<a name="ApiKey"></a>

### ApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

<a name="bearerAuth"></a>

### bearerAuth

- **Type**: HTTP Bearer Token authentication (JWT)

<a name="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="UserTokenAuth"></a>

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="ProjectTokenAuth"></a>

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="HeritageTokenAuth"></a>

### HeritageTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header
