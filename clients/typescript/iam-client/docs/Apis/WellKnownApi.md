# WellKnownApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                   | HTTP request                   | Description |
| -------------------------------------------------------- | ------------------------------ | ----------- |
| [**getWellKnownDid**](WellKnownApi.md#getWellKnownDid)   | **GET** /.well-known/did.json  |             |
| [**getWellKnownJwks**](WellKnownApi.md#getWellKnownJwks) | **GET** /.well-known/jwks.json |             |

<a name="getWellKnownDid"></a>

# **getWellKnownDid**

> Map getWellKnownDid()

### Parameters

This endpoint does not need any parameter.

### Return type

[**Map**](../Models/AnyType.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getWellKnownJwks"></a>

# **getWellKnownJwks**

> JsonWebKeySetDto getWellKnownJwks()

### Parameters

This endpoint does not need any parameter.

### Return type

[**JsonWebKeySetDto**](../Models/JsonWebKeySetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
