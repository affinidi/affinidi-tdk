# affinidi_tdk_iota_client.api.DefaultApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                     | HTTP request                | Description |
| ---------------------------------------------------------- | --------------------------- | ----------- |
| [**listLoggedConsents**](DefaultApi.md#listloggedconsents) | **GET** /v1/logged-consents |

# **listLoggedConsents**

> ListLoggedConsentsOK listLoggedConsents(userId, limit, exclusiveStartKey)

returns a list of logged consents for the project

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final userId = userId_example; // String |
final limit = 56; // int | Maximum number of records to fetch in a list
final exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    final result = api_instance.listLoggedConsents(userId, limit, exclusiveStartKey);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->listLoggedConsents: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes      |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **userId**            | **String** |                                                                                                                                                                | [optional] |
| **limit**             | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListLoggedConsentsOK**](ListLoggedConsentsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
