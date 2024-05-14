# AllowListApi

All URIs are relative to _http://localhost_

| Method                                                     | HTTP request                          | Description |
| ---------------------------------------------------------- | ------------------------------------- | ----------- |
| [**allowGroups**](AllowListApi.md#allowGroups)             | **POST** /v1/allow-list/groups/add    |             |
| [**disallowGroups**](AllowListApi.md#disallowGroups)       | **POST** /v1/allow-list/groups/remove |             |
| [**listAllowedGroups**](AllowListApi.md#listAllowedGroups) | **GET** /v1/allow-list/groups         |             |

<a name="allowGroups"></a>

# **allowGroups**

> allowGroups(GroupNamesInput)

    Allow Single or Multiple Groups

### Parameters

| Name                | Type                                                | Description                  | Notes      |
| ------------------- | --------------------------------------------------- | ---------------------------- | ---------- |
| **GroupNamesInput** | [**GroupNamesInput**](../Models/GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="disallowGroups"></a>

# **disallowGroups**

> disallowGroups(GroupNamesInput)

    Disallow Single or Multiple Groups

### Parameters

| Name                | Type                                                | Description                  | Notes      |
| ------------------- | --------------------------------------------------- | ---------------------------- | ---------- |
| **GroupNamesInput** | [**GroupNamesInput**](../Models/GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="listAllowedGroups"></a>

# **listAllowedGroups**

> GroupNames listAllowedGroups(pageToken)

    Get Allowed Groups

### Parameters

| Name          | Type       | Description | Notes                        |
| ------------- | ---------- | ----------- | ---------------------------- |
| **pageToken** | **String** |             | [optional] [default to null] |

### Return type

[**GroupNames**](../Models/GroupNames.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
