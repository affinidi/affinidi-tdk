# affinidi_tdk_credential_issuance_client

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

For more information, please visit [https://github.com/affinidi/affinidi-tdk](https://github.com/affinidi/affinidi-tdk)

Documentation is available at [https://docs.affinidi.com/dev-tools/affinidi-tdk/clients/credential-issuance/](https://docs.affinidi.com/dev-tools/affinidi-tdk/clients/credential-issuance/)

## Requirements.

Python 3.7+

## Installation & Usage

### pip install

If the python package is hosted on a repository, you can install directly using:

```sh
pip install affinidi_tdk_credential_issuance_client
```

Then import the package:

```python
import affinidi_tdk_credential_issuance_client
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```

Then import the package:

```python
import affinidi_tdk_credential_issuance_client
```

### Tests

Execute `pytest` to run the tests.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import time
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'


# Enter a context with an instance of the API client
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.ConfigurationApi(api_client)
    create_issuance_config_input = affinidi_tdk_credential_issuance_client.CreateIssuanceConfigInput() # CreateIssuanceConfigInput | Request body of create configuration

    try:
        api_response = api_instance.create_issuance_config(create_issuance_config_input)
        print("The response of ConfigurationApi->create_issuance_config:\n")
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ConfigurationApi->create_issuance_config: %s\n" % e)

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Class              | Method                                                                                                        | HTTP request                                                                                | Description                                           |
| ------------------ | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| _ConfigurationApi_ | [**create_issuance_config**](docs/ConfigurationApi.md#create_issuance_config)                                 | **POST** /v1/configurations                                                                 |
| _ConfigurationApi_ | [**delete_issuance_config_by_id**](docs/ConfigurationApi.md#delete_issuance_config_by_id)                     | **DELETE** /v1/configurations/{configurationId}                                             |
| _ConfigurationApi_ | [**get_issuance_config_by_id**](docs/ConfigurationApi.md#get_issuance_config_by_id)                           | **GET** /v1/configurations/{configurationId}                                                |
| _ConfigurationApi_ | [**get_issuance_config_list**](docs/ConfigurationApi.md#get_issuance_config_list)                             | **GET** /v1/configurations                                                                  |
| _ConfigurationApi_ | [**update_issuance_config_by_id**](docs/ConfigurationApi.md#update_issuance_config_by_id)                     | **PUT** /v1/configurations/{configurationId}                                                |
| _CredentialsApi_   | [**batch_credential**](docs/CredentialsApi.md#batch_credential)                                               | **POST** /v1/{projectId}/batch_credential                                                   | Allows wallets to claim multiple credentials at once. |
| _CredentialsApi_   | [**generate_credentials**](docs/CredentialsApi.md#generate_credentials)                                       | **POST** /v1/{projectId}/credential                                                         |
| _CredentialsApi_   | [**get_claimed_credentials**](docs/CredentialsApi.md#get_claimed_credentials)                                 | **GET** /v1/{projectId}/configurations/{configurationId}/credentials                        | Get claimed credential in the specified range         |
| _CredentialsApi_   | [**get_issuance_id_claimed_credential**](docs/CredentialsApi.md#get_issuance_id_claimed_credential)           | **GET** /v1/{projectId}/configurations/{configurationId}/issuances/{issuanceId}/credentials | Get claimed VC linked to the issuanceId               |
| _DefaultApi_       | [**change_credential_status**](docs/DefaultApi.md#change_credential_status)                                   | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status            | change credential status.                             |
| _DefaultApi_       | [**list_issuance_data_records**](docs/DefaultApi.md#list_issuance_data_records)                               | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records     | List records                                          |
| _IssuanceApi_      | [**issuance_state**](docs/IssuanceApi.md#issuance_state)                                                      | **GET** /v1/{projectId}/issuance/state/{issuanceId}                                         |
| _IssuanceApi_      | [**issue_credentials**](docs/IssuanceApi.md#issue_credentials)                                                | **POST** /v1/{projectId}/credential/issue                                                   |
| _IssuanceApi_      | [**list_issuance**](docs/IssuanceApi.md#list_issuance)                                                        | **GET** /v1/{projectId}/issuance                                                            |
| _IssuanceApi_      | [**start_issuance**](docs/IssuanceApi.md#start_issuance)                                                      | **POST** /v1/{projectId}/issuance/start                                                     |
| _OfferApi_         | [**get_credential_offer**](docs/OfferApi.md#get_credential_offer)                                             | **GET** /v1/{projectId}/offers/{issuanceId}                                                 |
| _WellKnownApi_     | [**get_well_known_open_id_credential_issuer**](docs/WellKnownApi.md#get_well_known_open_id_credential_issuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer                                |

## Documentation For Models

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

## Author

info@affinidi.com
