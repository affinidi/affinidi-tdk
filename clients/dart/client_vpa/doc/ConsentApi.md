# openapi.api.ConsentApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                             | HTTP request                | Description                                       |
| -------------------------------------------------- | --------------------------- | ------------------------------------------------- |
| [**consentRequest**](ConsentApi.md#consentrequest) | **GET** /v1/consent/request | IDP consent request automated by adapter frontend |

# **consentRequest**

> consentRequest(consentChallenge)

IDP consent request automated by adapter frontend

IDP consent request automated by adapter frontend

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = ConsentApi();
final consentChallenge = consentChallenge_example; // String | Consent challenge provided by IDP

try {
    api_instance.consentRequest(consentChallenge);
} catch (e) {
    print('Exception when calling ConsentApi->consentRequest: $e\n');
}
```

### Parameters

| Name                 | Type       | Description                       | Notes      |
| -------------------- | ---------- | --------------------------------- | ---------- |
| **consentChallenge** | **String** | Consent challenge provided by IDP | [optional] |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
