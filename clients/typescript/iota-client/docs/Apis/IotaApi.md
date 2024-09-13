# IotaApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                  | HTTP request                                                 | Description         |
| --------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ------------------- |
| [**awsExchangeCredentials**](IotaApi.md#awsExchangeCredentials)                         | **POST** /v1/aws-exchange-credentials                        |                     |
| [**awsExchangeCredentialsProjectToken**](IotaApi.md#awsExchangeCredentialsProjectToken) | **POST** /v1/aws-exchange-credentials/project-token          |                     |
| [**deletePexQueries**](IotaApi.md#deletePexQueries)                                     | **POST** /v1/configurations/{configurationId}/delete-queries | deletes pex queries |
| [**fetchIotaVpResponse**](IotaApi.md#fetchIotaVpResponse)                               | **POST** /v1/fetch-iota-response                             |                     |
| [**initiateDataSharingRequest**](IotaApi.md#initiateDataSharingRequest)                 | **POST** /v1/initiate-data-sharing-request                   |                     |
| [**iotaExchangeCredentials**](IotaApi.md#iotaExchangeCredentials)                       | **POST** /v1/exchange-credentials                            |                     |
| [**savePexQueries**](IotaApi.md#savePexQueries)                                         | **POST** /v1/configurations/{configurationId}/save-queries   |                     |

<a name="awsExchangeCredentials"></a>

# **awsExchangeCredentials**

> AwsExchangeCredentialsOK awsExchangeCredentials(AwsExchangeCredentials)

    It exchanges limited token into cognito

### Parameters

| Name                       | Type                                                              | Description            | Notes |
| -------------------------- | ----------------------------------------------------------------- | ---------------------- | ----- |
| **AwsExchangeCredentials** | [**AwsExchangeCredentials**](../Models/AwsExchangeCredentials.md) | AwsExchangeCredentials |       |

### Return type

[**AwsExchangeCredentialsOK**](../Models/AwsExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="awsExchangeCredentialsProjectToken"></a>

# **awsExchangeCredentialsProjectToken**

> IotaExchangeCredentialsOK awsExchangeCredentialsProjectToken(AwsExchangeCredentialsProjectToken)

    It exchanges project token into cognito

### Parameters

| Name                                   | Type                                                                                      | Description                        | Notes |
| -------------------------------------- | ----------------------------------------------------------------------------------------- | ---------------------------------- | ----- |
| **AwsExchangeCredentialsProjectToken** | [**AwsExchangeCredentialsProjectToken**](../Models/AwsExchangeCredentialsProjectToken.md) | AwsExchangeCredentialsProjectToken |       |

### Return type

[**IotaExchangeCredentialsOK**](../Models/IotaExchangeCredentialsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deletePexQueries"></a>

# **deletePexQueries**

> deletePexQueries(configurationId)

deletes pex queries

    deletes pex queries

### Parameters

| Name                | Type       | Description          | Notes             |
| ------------------- | ---------- | -------------------- | ----------------- |
| **configurationId** | **String** | iotaConfiguration Id | [default to null] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="fetchIotaVpResponse"></a>

# **fetchIotaVpResponse**

> FetchIOTAVPResponseOK fetchIotaVpResponse(FetchIOTAVPResponseInput)

    This will get the final data response

### Parameters

| Name                         | Type                                                                  | Description              | Notes |
| ---------------------------- | --------------------------------------------------------------------- | ------------------------ | ----- |
| **FetchIOTAVPResponseInput** | [**FetchIOTAVPResponseInput**](../Models/FetchIOTAVPResponseInput.md) | FetchIOTAVPResponseInput |       |

### Return type

[**FetchIOTAVPResponseOK**](../Models/FetchIOTAVPResponseOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="initiateDataSharingRequest"></a>

# **initiateDataSharingRequest**

> InitiateDataSharingRequestOK initiateDataSharingRequest(InitiateDataSharingRequestInput)

    This will initiate data sharing request for the data sharing flow

### Parameters

| Name                                | Type                                                                                | Description                     | Notes |
| ----------------------------------- | ----------------------------------------------------------------------------------- | ------------------------------- | ----- |
| **InitiateDataSharingRequestInput** | [**InitiateDataSharingRequestInput**](../Models/InitiateDataSharingRequestInput.md) | InitiateDataSharingRequestInput |       |

### Return type

[**InitiateDataSharingRequestOK**](../Models/InitiateDataSharingRequestOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="iotaExchangeCredentials"></a>

# **iotaExchangeCredentials**

> IotaExchangeCredentialsOK iotaExchangeCredentials(IotaExchangeCredentials)

    It exchanges limited token into cognito sts identity credentials

### Parameters

| Name                        | Type                                                                | Description                | Notes |
| --------------------------- | ------------------------------------------------------------------- | -------------------------- | ----- |
| **IotaExchangeCredentials** | [**IotaExchangeCredentials**](../Models/IotaExchangeCredentials.md) | IotaAwsExchangeCredentials |       |

### Return type

[**IotaExchangeCredentialsOK**](../Models/IotaExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="savePexQueries"></a>

# **savePexQueries**

> Object savePexQueries(configurationId, SavePexQueriesUpdateInput)

    saves all pex queries

### Parameters

| Name                          | Type                                                                    | Description          | Notes             |
| ----------------------------- | ----------------------------------------------------------------------- | -------------------- | ----------------- |
| **configurationId**           | **String**                                                              | iotaConfiguration Id | [default to null] |
| **SavePexQueriesUpdateInput** | [**SavePexQueriesUpdateInput**](../Models/SavePexQueriesUpdateInput.md) | SavePexQueriesInput  |                   |

### Return type

**Object**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
