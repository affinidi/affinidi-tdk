# IotaApi

All URIs are relative to _http://localhost_

| Method                                                          | HTTP request                          | Description |
| --------------------------------------------------------------- | ------------------------------------- | ----------- |
| [**awsExchangeCredentials**](IotaApi.md#awsExchangeCredentials) | **POST** /v1/aws-exchange-credentials |             |

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
