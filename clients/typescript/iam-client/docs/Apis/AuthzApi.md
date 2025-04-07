# AuthzApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                             | HTTP request                                 | Description                             |
| -------------------------------------------------- | -------------------------------------------- | --------------------------------------- |
| [**deleteAccessVfs**](AuthzApi.md#deleteAccessVfs) | **DELETE** /v1/authz/vfs/access/{subjectDID} | delete access of subjectDiD             |
| [**grantAccessVfs**](AuthzApi.md#grantAccessVfs)   | **POST** /v1/authz/vfs/access                | Grant access to the virtual file system |
| [**updateAccessVfs**](AuthzApi.md#updateAccessVfs) | **PUT** /v1/authz/vfs/access/{subjectDID}    | Update access of subjectDiD             |

<a name="deleteAccessVfs"></a>

# **deleteAccessVfs**

> deleteAccessVfs(subjectDID)

delete access of subjectDiD

    deleteAccessVfs

### Parameters

| Name           | Type       | Description | Notes             |
| -------------- | ---------- | ----------- | ----------------- |
| **subjectDID** | **String** |             | [default to null] |

### Return type

null (empty response body)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

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

<a name="updateAccessVfs"></a>

# **updateAccessVfs**

> UpdateAccessOutput updateAccessVfs(subjectDID, UpdateAccessInput)

Update access of subjectDiD

    updateAccessVfs

### Parameters

| Name                  | Type                                                    | Description                          | Notes             |
| --------------------- | ------------------------------------------------------- | ------------------------------------ | ----------------- |
| **subjectDID**        | **String**                                              |                                      | [default to null] |
| **UpdateAccessInput** | [**UpdateAccessInput**](../Models/UpdateAccessInput.md) | update access to virtual file system |                   |

### Return type

[**UpdateAccessOutput**](../Models/UpdateAccessOutput.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
