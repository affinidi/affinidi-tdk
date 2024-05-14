# GroupApi

All URIs are relative to _http://localhost_

| Method                                                         | HTTP request                            | Description |
| -------------------------------------------------------------- | --------------------------------------- | ----------- |
| [**addUserToGroup**](GroupApi.md#addUserToGroup)               | **POST** /v1/groups/{groupName}/users   |             |
| [**createGroup**](GroupApi.md#createGroup)                     | **POST** /v1/groups                     |             |
| [**deleteGroup**](GroupApi.md#deleteGroup)                     | **DELETE** /v1/groups/{groupName}       |             |
| [**getGroupById**](GroupApi.md#getGroupById)                   | **GET** /v1/groups/{groupName}          |             |
| [**listGroupUserMappings**](GroupApi.md#listGroupUserMappings) | **GET** /v1/groups/{groupName}/users    |             |
| [**listGroups**](GroupApi.md#listGroups)                       | **GET** /v1/groups                      |             |
| [**removeUserFromGroup**](GroupApi.md#removeUserFromGroup)     | **DELETE** /v1/groups/{groupName}/users |             |

<a name="addUserToGroup"></a>

# **addUserToGroup**

> GroupUserMappingDto addUserToGroup(groupName, AddUserToGroupInput)

### Parameters

| Name                    | Type                                                        | Description    | Notes             |
| ----------------------- | ----------------------------------------------------------- | -------------- | ----------------- |
| **groupName**           | **String**                                                  |                | [default to null] |
| **AddUserToGroupInput** | [**AddUserToGroupInput**](../Models/AddUserToGroupInput.md) | AddUserToGroup |                   |

### Return type

[**GroupUserMappingDto**](../Models/GroupUserMappingDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createGroup"></a>

# **createGroup**

> GroupDto createGroup(CreateGroupInput)

### Parameters

| Name                 | Type                                                  | Description | Notes |
| -------------------- | ----------------------------------------------------- | ----------- | ----- |
| **CreateGroupInput** | [**CreateGroupInput**](../Models/CreateGroupInput.md) | CreateGroup |       |

### Return type

[**GroupDto**](../Models/GroupDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteGroup"></a>

# **deleteGroup**

> deleteGroup(groupName)

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **groupName** | **String** |             | [default to null] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getGroupById"></a>

# **getGroupById**

> GroupDto getGroupById(groupName)

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **groupName** | **String** |             | [default to null] |

### Return type

[**GroupDto**](../Models/GroupDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listGroupUserMappings"></a>

# **listGroupUserMappings**

> GroupUserMappingsList listGroupUserMappings(groupName, limit, exclusiveStartKey, sortOrder)

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                                          |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------- |
| **groupName**         | **String**  |                                                                                                                                                                | [default to null]                              |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to null]                   |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null]                   |
| **sortOrder**         | **String**  | sort response in specific order. By default it is in desc order                                                                                                | [optional] [default to null] [enum: asc, desc] |

### Return type

[**GroupUserMappingsList**](../Models/GroupUserMappingsList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listGroups"></a>

# **listGroups**

> GroupsList listGroups()

### Parameters

This endpoint does not need any parameter.

### Return type

[**GroupsList**](../Models/GroupsList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeUserFromGroup"></a>

# **removeUserFromGroup**

> removeUserFromGroup(groupName, RemoveUserFromGroupInput)

### Parameters

| Name                         | Type                                                                  | Description            | Notes             |
| ---------------------------- | --------------------------------------------------------------------- | ---------------------- | ----------------- |
| **groupName**                | **String**                                                            |                        | [default to null] |
| **RemoveUserFromGroupInput** | [**RemoveUserFromGroupInput**](../Models/RemoveUserFromGroupInput.md) | Remove user from group |                   |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
