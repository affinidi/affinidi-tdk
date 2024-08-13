# IotaApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                  | HTTP request                                        | Description |
| --------------------------------------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**awsExchangeCredentials**](IotaApi.md#awsExchangeCredentials)                         | **POST** /v1/aws-exchange-credentials               |             |
| [**awsExchangeCredentialsProjectToken**](IotaApi.md#awsExchangeCredentialsProjectToken) | **POST** /v1/aws-exchange-credentials/project-token |             |

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

> AwsExchangeCredentialsOK awsExchangeCredentialsProjectToken(AwsExchangeCredentialsProjectToken)

    It exchanges project token into cognito

### Parameters

| Name                                   | Type                                                                                      | Description                        | Notes |
| -------------------------------------- | ----------------------------------------------------------------------------------------- | ---------------------------------- | ----- |
| **AwsExchangeCredentialsProjectToken** | [**AwsExchangeCredentialsProjectToken**](../Models/AwsExchangeCredentialsProjectToken.md) | AwsExchangeCredentialsProjectToken |       |

### Return type

[**AwsExchangeCredentialsOK**](../Models/AwsExchangeCredentialsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
