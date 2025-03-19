# AuthzApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                           | HTTP request                  | Description                             |
| ------------------------------------------------ | ----------------------------- | --------------------------------------- |
| [**grantAccessVfs**](AuthzApi.md#grantAccessVfs) | **POST** /v1/authz/vfs/access | Grant access to the virtual file system |

<a name="grantAccessVfs"></a>

# **grantAccessVfs**

> GrantAccessOutput grantAccessVfs(GrantAccessInput)

Grant access to the virtual file system

    Grants access rights to a subject for the virtual file system

### Parameters

| Name                 | Type                                                  | Description                         | Notes |
| -------------------- | ----------------------------------------------------- | ----------------------------------- | ----- |
| **GrantAccessInput** | [**GrantAccessInput**](../Models/GrantAccessInput.md) | Grant access to virtual file system |       |

### Return type

[**GrantAccessOutput**](../Models/GrantAccessOutput.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
