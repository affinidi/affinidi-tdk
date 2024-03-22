# openapi.api.SessionApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                     | HTTP request                                            | Description                               |
| -------------------------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------- |
| [**loginSessionAcceptResponse**](SessionApi.md#loginsessionacceptresponse) | **POST** /v1/login/sessions/{sessionId}/accept-response | Accept OIDC VP Response for Login Session |
| [**loginSessionForIdp**](SessionApi.md#loginsessionforidp)                 | **POST** /v1/login/sessions/for-idp                     | Create Login Session for IDP Login        |
| [**loginSessionRejectResponse**](SessionApi.md#loginsessionrejectresponse) | **POST** /v1/login/sessions/{sessionId}/reject-response | Reject Response for Login Session         |

# **loginSessionAcceptResponse**

> Map<String, Object> loginSessionAcceptResponse(sessionId, requestBody)

Accept OIDC VP Response for Login Session

Accepts and Validates the OIDC VP Response sent by the Wallet

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = SessionApi();
final sessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The id of the login session
final requestBody = Map<String, Object>(); // Map<String, Object> | LoginSessionAcceptResponse

try {
    final result = api_instance.loginSessionAcceptResponse(sessionId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->loginSessionAcceptResponse: $e\n');
}
```

### Parameters

| Name            | Type                                 | Description                 | Notes      |
| --------------- | ------------------------------------ | --------------------------- | ---------- |
| **sessionId**   | **String**                           | The id of the login session |
| **requestBody** | [**Map<String, Object>**](Object.md) | LoginSessionAcceptResponse  | [optional] |

### Return type

[**Map<String, Object>**](Object.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginSessionForIdp**

> LoginSessionDto loginSessionForIdp(loginSessionForIDPInput)

Create Login Session for IDP Login

Creates Login Session for IDP Login by using the Login Challenge

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = SessionApi();
final loginSessionForIDPInput = LoginSessionForIDPInput(); // LoginSessionForIDPInput | LoginSessionForIdp

try {
    final result = api_instance.loginSessionForIdp(loginSessionForIDPInput);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->loginSessionForIdp: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description        | Notes      |
| --------------------------- | --------------------------------------------------------- | ------------------ | ---------- |
| **loginSessionForIDPInput** | [**LoginSessionForIDPInput**](LoginSessionForIDPInput.md) | LoginSessionForIdp | [optional] |

### Return type

[**LoginSessionDto**](LoginSessionDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginSessionRejectResponse**

> Map<String, Object> loginSessionRejectResponse(sessionId, loginSessionRejectResponseRequest)

Reject Response for Login Session

The user declines the request for access to their data

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = SessionApi();
final sessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The id of the login session
final loginSessionRejectResponseRequest = LoginSessionRejectResponseRequest(); // LoginSessionRejectResponseRequest | LoginSessionRejectResponse

try {
    final result = api_instance.loginSessionRejectResponse(sessionId, loginSessionRejectResponseRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->loginSessionRejectResponse: $e\n');
}
```

### Parameters

| Name                                  | Type                                                                          | Description                 | Notes      |
| ------------------------------------- | ----------------------------------------------------------------------------- | --------------------------- | ---------- |
| **sessionId**                         | **String**                                                                    | The id of the login session |
| **loginSessionRejectResponseRequest** | [**LoginSessionRejectResponseRequest**](LoginSessionRejectResponseRequest.md) | LoginSessionRejectResponse  | [optional] |

### Return type

[**Map<String, Object>**](Object.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
