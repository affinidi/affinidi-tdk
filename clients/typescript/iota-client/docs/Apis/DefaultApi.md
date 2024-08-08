# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                     | HTTP request                | Description |
| ---------------------------------------------------------- | --------------------------- | ----------- |
| [**listLoggedConsents**](DefaultApi.md#listLoggedConsents) | **GET** /v1/logged-consents |             |

<a name="listLoggedConsents"></a>

# **listLoggedConsents**

> ListLoggedConsentsOK listLoggedConsents(configurationId, userId, limit, exclusiveStartKey)

    returns a list of logged consents for the project

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **configurationId**   | **String**  |                                                                                                                                                                | [optional] [default to null] |
| **userId**            | **String**  |                                                                                                                                                                | [optional] [default to null] |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to null] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**ListLoggedConsentsOK**](../Models/ListLoggedConsentsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
