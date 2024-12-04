# IotaApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                  | HTTP request                                        | Description |
| --------------------------------------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**awsExchangeCredentials**](IotaApi.md#awsExchangeCredentials)                         | **POST** /v1/aws-exchange-credentials               |             |
| [**awsExchangeCredentialsProjectToken**](IotaApi.md#awsExchangeCredentialsProjectToken) | **POST** /v1/aws-exchange-credentials/project-token |             |
| [**fetchIotaVpResponse**](IotaApi.md#fetchIotaVpResponse)                               | **POST** /v1/fetch-iota-response                    |             |
| [**initiateDataSharingRequest**](IotaApi.md#initiateDataSharingRequest)                 | **POST** /v1/initiate-data-sharing-request          |             |
| [**iotaExchangeCredentials**](IotaApi.md#iotaExchangeCredentials)                       | **POST** /v1/exchange-credentials                   |             |

<a name="awsExchangeCredentials"></a>

# **awsExchangeCredentials**

> AwsExchangeCredentialsOK awsExchangeCredentials(AwsExchangeCredentials)

    Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.

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

    Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

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

<a name="fetchIotaVpResponse"></a>

# **fetchIotaVpResponse**

> FetchIOTAVPResponseOK fetchIotaVpResponse(FetchIOTAVPResponseInput)

    Fetches the client&#39;s callback that contains the user&#39;s shared data in a Verifiable Presentation format after a successful data-sharing flow.

### Parameters

| Name                         | Type                                                                  | Description              | Notes |
| ---------------------------- | --------------------------------------------------------------------- | ------------------------ | ----- |
| **FetchIOTAVPResponseInput** | [**FetchIOTAVPResponseInput**](../Models/FetchIOTAVPResponseInput.md) | FetchIOTAVPResponseInput |       |

### Return type

[**FetchIOTAVPResponseOK**](../Models/FetchIOTAVPResponseOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="initiateDataSharingRequest"></a>

# **initiateDataSharingRequest**

> InitiateDataSharingRequestOK initiateDataSharingRequest(InitiateDataSharingRequestInput)

    Generates the request token for the Redirect mode to initiate the data-sharing flow.

### Parameters

| Name                                | Type                                                                                | Description                     | Notes |
| ----------------------------------- | ----------------------------------------------------------------------------------- | ------------------------------- | ----- |
| **InitiateDataSharingRequestInput** | [**InitiateDataSharingRequestInput**](../Models/InitiateDataSharingRequestInput.md) | InitiateDataSharingRequestInput |       |

### Return type

[**InitiateDataSharingRequestOK**](../Models/InitiateDataSharingRequestOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="iotaExchangeCredentials"></a>

# **iotaExchangeCredentials**

> IotaExchangeCredentialsOK iotaExchangeCredentials(IotaExchangeCredentials)

    Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

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
