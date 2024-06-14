# StsApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                             | HTTP request                                 | Description |
| ------------------------------------------------------------------ | -------------------------------------------- | ----------- |
| [**createProjectScopedToken**](StsApi.md#createProjectScopedToken) | **POST** /v1/sts/create-project-scoped-token |             |
| [**whoami**](StsApi.md#whoami)                                     | **GET** /v1/sts/whoami                       |             |

<a name="createProjectScopedToken"></a>

# **createProjectScopedToken**

> CreateProjectScopedTokenOutput createProjectScopedToken(CreateProjectScopedTokenInput)

### Parameters

| Name                              | Type                                                                            | Description              | Notes |
| --------------------------------- | ------------------------------------------------------------------------------- | ------------------------ | ----- |
| **CreateProjectScopedTokenInput** | [**CreateProjectScopedTokenInput**](../Models/CreateProjectScopedTokenInput.md) | CreateProjectScopedToken |       |

### Return type

[**CreateProjectScopedTokenOutput**](../Models/CreateProjectScopedTokenOutput.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="whoami"></a>

# **whoami**

> WhoamiDto whoami()

### Parameters

This endpoint does not need any parameter.

### Return type

[**WhoamiDto**](../Models/WhoamiDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
