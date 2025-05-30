# Documentation for CredentialIssuanceService

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Class              | Method                                                                                            | HTTP request                                                                                | Description                                                                                                                                                                                                            |
| ------------------ | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| _ConfigurationApi_ | [**createIssuanceConfig**](Apis/ConfigurationApi.md#createissuanceconfig)                         | **POST** /v1/configurations                                                                 | Create issuance configuration, project have only one configuration                                                                                                                                                     |
| _ConfigurationApi_ | [**deleteIssuanceConfigById**](Apis/ConfigurationApi.md#deleteissuanceconfigbyid)                 | **DELETE** /v1/configurations/{configurationId}                                             | Delete project issuance configuration                                                                                                                                                                                  |
| _ConfigurationApi_ | [**getIssuanceConfigById**](Apis/ConfigurationApi.md#getissuanceconfigbyid)                       | **GET** /v1/configurations/{configurationId}                                                | Get issuance configuration by id                                                                                                                                                                                       |
| _ConfigurationApi_ | [**getIssuanceConfigList**](Apis/ConfigurationApi.md#getissuanceconfiglist)                       | **GET** /v1/configurations                                                                  | Get issuance configuration for my selected project                                                                                                                                                                     |
| _ConfigurationApi_ | [**updateIssuanceConfigById**](Apis/ConfigurationApi.md#updateissuanceconfigbyid)                 | **PUT** /v1/configurations/{configurationId}                                                | Update issuance configuration                                                                                                                                                                                          |
| _CredentialsApi_   | [**batchCredential**](Apis/CredentialsApi.md#batchcredential)                                     | **POST** /v1/{projectId}/batch_credential                                                   | Allows wallets to claim multiple credentials at once.                                                                                                                                                                  |
| _CredentialsApi_   | [**generateCredentials**](Apis/CredentialsApi.md#generatecredentials)                             | **POST** /v1/{projectId}/credential                                                         | Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials |
| _CredentialsApi_   | [**getClaimedCredentials**](Apis/CredentialsApi.md#getclaimedcredentials)                         | **GET** /v1/{projectId}/configurations/{configurationId}/credentials                        | Get claimed credential in the specified range                                                                                                                                                                          |
| _CredentialsApi_   | [**getIssuanceIdClaimedCredential**](Apis/CredentialsApi.md#getissuanceidclaimedcredential)       | **GET** /v1/{projectId}/configurations/{configurationId}/issuances/{issuanceId}/credentials | Get claimed VC linked to the issuanceId                                                                                                                                                                                |
| _DefaultApi_       | [**changeCredentialStatus**](Apis/DefaultApi.md#changecredentialstatus)                           | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status            | change credential status.                                                                                                                                                                                              |
| _DefaultApi_       | [**listIssuanceDataRecords**](Apis/DefaultApi.md#listissuancedatarecords)                         | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records     | List records                                                                                                                                                                                                           |
| _IssuanceApi_      | [**issuanceState**](Apis/IssuanceApi.md#issuancestate)                                            | **GET** /v1/{projectId}/issuance/state/{issuanceId}                                         | Get issuance status                                                                                                                                                                                                    |
| _IssuanceApi_      | [**issueCredentials**](Apis/IssuanceApi.md#issuecredentials)                                      | **POST** /v1/{projectId}/credential/issue                                                   | Endpoint to issue credentials directly without following OID4VCI flow                                                                                                                                                  |
| _IssuanceApi_      | [**listIssuance**](Apis/IssuanceApi.md#listissuance)                                              | **GET** /v1/{projectId}/issuance                                                            | List all issuances for Project                                                                                                                                                                                         |
| _IssuanceApi_      | [**startIssuance**](Apis/IssuanceApi.md#startissuance)                                            | **POST** /v1/{projectId}/issuance/start                                                     | Endpoint used b websites to start the issuance process                                                                                                                                                                 |
| _OfferApi_         | [**getCredentialOffer**](Apis/OfferApi.md#getcredentialoffer)                                     | **GET** /v1/{projectId}/offers/{issuanceId}                                                 | Endpoint used to return Credential Offer details, used with `credential_offer_uri` response                                                                                                                            |
| _WellKnownApi_     | [**getWellKnownOpenIdCredentialIssuer**](Apis/WellKnownApi.md#getwellknownopenidcredentialissuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer                                |                                                                                                                                                                                                                        |

<a name="documentation-for-models"></a>

## Documentation for Models

- [ActionForbiddenError](./Models/ActionForbiddenError.md)
- [ActionForbiddenError_details_inner](./Models/ActionForbiddenError_details_inner.md)
- [BatchCredentialInput](./Models/BatchCredentialInput.md)
- [BatchCredentialInput_credential_requests_inner](./Models/BatchCredentialInput_credential_requests_inner.md)
- [BatchCredentialResponse](./Models/BatchCredentialResponse.md)
- [BatchCredentialResponse_credential_responses_inner](./Models/BatchCredentialResponse_credential_responses_inner.md)
- [ChangeCredentialStatusInput](./Models/ChangeCredentialStatusInput.md)
- [ChangeStatusForbiddenError](./Models/ChangeStatusForbiddenError.md)
- [CisConfigurationWebhookSetting](./Models/CisConfigurationWebhookSetting.md)
- [CisConfigurationWebhookSetting_endpoint](./Models/CisConfigurationWebhookSetting_endpoint.md)
- [ClaimedCredentialListResponse](./Models/ClaimedCredentialListResponse.md)
- [ClaimedCredentialResponse](./Models/ClaimedCredentialResponse.md)
- [CorsBatchCredentialOK](./Models/CorsBatchCredentialOK.md)
- [CorsGenerateCredentialsOK](./Models/CorsGenerateCredentialsOK.md)
- [CorsGetClaimedCredentialsOK](./Models/CorsGetClaimedCredentialsOK.md)
- [CorsGetCredentialOfferOK](./Models/CorsGetCredentialOfferOK.md)
- [CorsGetIssuanceIdClaimedCredentialOK](./Models/CorsGetIssuanceIdClaimedCredentialOK.md)
- [CorsGetWellKnownOpenIdCredentialIssuerOK](./Models/CorsGetWellKnownOpenIdCredentialIssuerOK.md)
- [CreateCredentialInput](./Models/CreateCredentialInput.md)
- [CreateIssuanceConfigInput](./Models/CreateIssuanceConfigInput.md)
- [CredentialIssuanceIdExistError](./Models/CredentialIssuanceIdExistError.md)
- [CredentialOfferClaimedError](./Models/CredentialOfferClaimedError.md)
- [CredentialOfferExpiredError](./Models/CredentialOfferExpiredError.md)
- [CredentialOfferResponse](./Models/CredentialOfferResponse.md)
- [CredentialOfferResponse_grants](./Models/CredentialOfferResponse_grants.md)
- [CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code](./Models/CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.md)
- [CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code](./Models/CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.md)
- [CredentialProof](./Models/CredentialProof.md)
- [CredentialResponse](./Models/CredentialResponse.md)
- [CredentialResponseDeferred](./Models/CredentialResponseDeferred.md)
- [CredentialResponseImmediate](./Models/CredentialResponseImmediate.md)
- [CredentialResponseImmediate_c_nonce_expires_in](./Models/CredentialResponseImmediate_c_nonce_expires_in.md)
- [CredentialResponseImmediate_credential](./Models/CredentialResponseImmediate_credential.md)
- [CredentialSubjectNotValidError](./Models/CredentialSubjectNotValidError.md)
- [CredentialSupportedObject](./Models/CredentialSupportedObject.md)
- [DeferredCredentialInput](./Models/DeferredCredentialInput.md)
- [FlowData](./Models/FlowData.md)
- [FlowData_statusListsDetails_inner](./Models/FlowData_statusListsDetails_inner.md)
- [InvalidCredentialRequestError](./Models/InvalidCredentialRequestError.md)
- [InvalidCredentialTypeError](./Models/InvalidCredentialTypeError.md)
- [InvalidIssuerWalletError](./Models/InvalidIssuerWalletError.md)
- [InvalidJwtTokenError](./Models/InvalidJwtTokenError.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [InvalidProofError](./Models/InvalidProofError.md)
- [IssuanceConfigDto](./Models/IssuanceConfigDto.md)
- [IssuanceConfigListResponse](./Models/IssuanceConfigListResponse.md)
- [IssuanceConfigMiniDto](./Models/IssuanceConfigMiniDto.md)
- [IssuanceStateResponse](./Models/IssuanceStateResponse.md)
- [ListIssuanceRecordResponse](./Models/ListIssuanceRecordResponse.md)
- [ListIssuanceResponse](./Models/ListIssuanceResponse.md)
- [ListIssuanceResponse_issuances_inner](./Models/ListIssuanceResponse_issuances_inner.md)
- [MissingHolderDidError](./Models/MissingHolderDidError.md)
- [NotFoundError](./Models/NotFoundError.md)
- [ProjectCredentialConfigExistError](./Models/ProjectCredentialConfigExistError.md)
- [ProjectCredentialConfigNotExistError](./Models/ProjectCredentialConfigNotExistError.md)
- [RevocationForbiddenError](./Models/RevocationForbiddenError.md)
- [StartIssuanceInput](./Models/StartIssuanceInput.md)
- [StartIssuanceInput_data_inner](./Models/StartIssuanceInput_data_inner.md)
- [StartIssuanceInput_data_inner_metaData](./Models/StartIssuanceInput_data_inner_metaData.md)
- [StartIssuanceInput_data_inner_statusListDetails_inner](./Models/StartIssuanceInput_data_inner_statusListDetails_inner.md)
- [StartIssuanceResponse](./Models/StartIssuanceResponse.md)
- [SupportedCredentialMetadata](./Models/SupportedCredentialMetadata.md)
- [SupportedCredentialMetadataItemLogo](./Models/SupportedCredentialMetadataItemLogo.md)
- [SupportedCredentialMetadata_display_inner](./Models/SupportedCredentialMetadata_display_inner.md)
- [UpdateIssuanceConfigInput](./Models/UpdateIssuanceConfigInput.md)
- [VcClaimedError](./Models/VcClaimedError.md)
- [WellKnownOpenIdCredentialIssuerResponse](./Models/WellKnownOpenIdCredentialIssuerResponse.md)
- [WellKnownOpenIdCredentialIssuerResponse_credentials_supported_inner](./Models/WellKnownOpenIdCredentialIssuerResponse_credentials_supported_inner.md)
- [changeCredentialStatus_400_response](./Models/changeCredentialStatus_400_response.md)
- [createIssuanceConfig_400_response](./Models/createIssuanceConfig_400_response.md)
- [generateCredentials_400_response](./Models/generateCredentials_400_response.md)
- [getCredentialOffer_400_response](./Models/getCredentialOffer_400_response.md)
- [startIssuance_400_response](./Models/startIssuance_400_response.md)

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
