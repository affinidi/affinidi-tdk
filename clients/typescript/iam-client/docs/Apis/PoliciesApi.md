# PoliciesApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                              | HTTP request                                  | Description |
| --------------------------------------------------- | --------------------------------------------- | ----------- |
| [**getPolicies**](PoliciesApi.md#getPolicies)       | **GET** /v1/policies/principals/{principalId} |             |
| [**updatePolicies**](PoliciesApi.md#updatePolicies) | **PUT** /v1/policies/principals/{principalId} |             |

<a name="getPolicies"></a>

# **getPolicies**

> PolicyDto getPolicies(principalId, principalType)

### Parameters

| Name              | Type       | Description | Notes                                 |
| ----------------- | ---------- | ----------- | ------------------------------------- |
| **principalId**   | **String** |             | [default to null]                     |
| **principalType** | **String** |             | [default to null] [enum: user, token] |

### Return type

[**PolicyDto**](../Models/PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updatePolicies"></a>

# **updatePolicies**

> PolicyDto updatePolicies(principalId, principalType, PolicyDto)

### Parameters

| Name              | Type                                    | Description    | Notes                                 |
| ----------------- | --------------------------------------- | -------------- | ------------------------------------- |
| **principalId**   | **String**                              |                | [default to null]                     |
| **principalType** | **String**                              |                | [default to null] [enum: user, token] |
| **PolicyDto**     | [**PolicyDto**](../Models/PolicyDto.md) | UpdatePolicies |                                       |

### Return type

[**PolicyDto**](../Models/PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
