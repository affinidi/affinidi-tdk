# ProfileDataApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                       | HTTP request                              | Description |
| ------------------------------------------------------------ | ----------------------------------------- | ----------- |
| [**queryProfileData**](ProfileDataApi.md#queryProfileData)   | **GET** /v1/nodes/{nodeId}/profile-data   |             |
| [**updateProfileData**](ProfileDataApi.md#updateProfileData) | **PATCH** /v1/nodes/{nodeId}/profile-data |             |

<a name="queryProfileData"></a>

# **queryProfileData**

> QueryProfileDataOK queryProfileData(nodeId, dek, query)

    Retrieves information from a profile.

### Parameters

| Name       | Type       | Description                                                          | Notes                        |
| ---------- | ---------- | -------------------------------------------------------------------- | ---------------------------- |
| **nodeId** | **String** | the nodeId of the node being operated on                             | [default to null]            |
| **dek**    | **String** | A base64url encoded data encryption key, encrypted using VFS public  | [default to null]            |
| **query**  | **String** | data query, TBD maybe encode it with base64 to make it url friendly? | [optional] [default to null] |

### Return type

[**QueryProfileDataOK**](../Models/QueryProfileDataOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateProfileData"></a>

# **updateProfileData**

> UpdateProfileDataOK updateProfileData(nodeId, UpdateProfileDataInput)

    Updates the profile with the given data

### Parameters

| Name                       | Type                                                              | Description                            | Notes             |
| -------------------------- | ----------------------------------------------------------------- | -------------------------------------- | ----------------- |
| **nodeId**                 | **String**                                                        |                                        | [default to null] |
| **UpdateProfileDataInput** | [**UpdateProfileDataInput**](../Models/UpdateProfileDataInput.md) | Updates the schema with the given data |                   |

### Return type

[**UpdateProfileDataOK**](../Models/UpdateProfileDataOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
