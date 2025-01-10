# ProfileDataApi

All URIs are relative to *https://apse1.api.affinidi.io/vfs*

| Method                                                       | HTTP request                              | Description |
| ------------------------------------------------------------ | ----------------------------------------- | ----------- |
| [**updateProfileData**](ProfileDataApi.md#updateProfileData) | **PATCH** /v1/nodes/{nodeId}/profile-data |             |

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
