# ConsumerAuthApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                                        | HTTP request                       | Description                           |
| ----------------------------------------------------------------------------- | ---------------------------------- | ------------------------------------- |
| [**consumerAuthTokenEndpoint**](ConsumerAuthApi.md#consumerAuthTokenEndpoint) | **POST** /v1/consumer/oauth2/token | The Consumer OAuth 2.0 Token Endpoint |

<a name="consumerAuthTokenEndpoint"></a>

# **consumerAuthTokenEndpoint**

> ConsumerAuthTokenEndpointOutput consumerAuthTokenEndpoint(ConsumerAuthTokenEndpointInput)

The Consumer OAuth 2.0 Token Endpoint

    Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.

### Parameters

| Name                               | Type                                                                              | Description               | Notes |
| ---------------------------------- | --------------------------------------------------------------------------------- | ------------------------- | ----- |
| **ConsumerAuthTokenEndpointInput** | [**ConsumerAuthTokenEndpointInput**](../Models/ConsumerAuthTokenEndpointInput.md) | ConsumerAuthTokenEndpoint |       |

### Return type

[**ConsumerAuthTokenEndpointOutput**](../Models/ConsumerAuthTokenEndpointOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
