# DenyListApi

All URIs are relative to _http://localhost_

| Method                                                    | HTTP request                         | Description |
| --------------------------------------------------------- | ------------------------------------ | ----------- |
| [**blockGroups**](DenyListApi.md#blockGroups)             | **POST** /v1/deny-list/groups/add    |             |
| [**blockUsers**](DenyListApi.md#blockUsers)               | **POST** /v1/deny-list/users/add     |             |
| [**listBlockedGroups**](DenyListApi.md#listBlockedGroups) | **GET** /v1/deny-list/groups         |             |
| [**listBlockedUsers**](DenyListApi.md#listBlockedUsers)   | **GET** /v1/deny-list/users          |             |
| [**unblockGroups**](DenyListApi.md#unblockGroups)         | **POST** /v1/deny-list/groups/remove |             |
| [**unblockUsers**](DenyListApi.md#unblockUsers)           | **POST** /v1/deny-list/users/remove  |             |

<a name="blockGroups"></a>

# **blockGroups**

> blockGroups(GroupNamesInput)

    Block Single or Multiple Groups

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

<a name="blockUsers"></a>

# **blockUsers**

> blockUsers(BlockedUsersInput)

    Block Single or Multiple user ids

### Parameters

| Name                  | Type                                                    | Description                    | Notes      |
| --------------------- | ------------------------------------------------------- | ------------------------------ | ---------- |
| **BlockedUsersInput** | [**BlockedUsersInput**](../Models/BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

<a name="listBlockedGroups"></a>

# **listBlockedGroups**

> GroupNames listBlockedGroups(pageToken)

    Get Blocked Groups

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

<a name="listBlockedUsers"></a>

# **listBlockedUsers**

> BlockedUsers listBlockedUsers(pageToken)

    Get List of Blocked Users

### Parameters

| Name          | Type       | Description | Notes                        |
| ------------- | ---------- | ----------- | ---------------------------- |
| **pageToken** | **String** |             | [optional] [default to null] |

### Return type

[**BlockedUsers**](../Models/BlockedUsers.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="unblockGroups"></a>

# **unblockGroups**

> unblockGroups(GroupNamesInput)

    Unblock Single or Multiple Groups

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

<a name="unblockUsers"></a>

# **unblockUsers**

> unblockUsers(BlockedUsersInput)

    Unblock Single or Multiple user ids

### Parameters

| Name                  | Type                                                    | Description                    | Notes      |
| --------------------- | ------------------------------------------------------- | ------------------------------ | ---------- |
| **BlockedUsersInput** | [**BlockedUsersInput**](../Models/BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined
