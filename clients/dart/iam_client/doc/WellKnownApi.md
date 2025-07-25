# affinidi_tdk_iam_client.api.WellKnownApi

## Load the API package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                   | HTTP request                   | Description |
| -------------------------------------------------------- | ------------------------------ | ----------- |
| [**getWellKnownDid**](WellKnownApi.md#getwellknowndid)   | **GET** /.well-known/did.json  |
| [**getWellKnownJwks**](WellKnownApi.md#getwellknownjwks) | **GET** /.well-known/jwks.json |

# **getWellKnownDid**

> JsonObject getWellKnownDid()

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';

final api = AffinidiTdkIamClient().getWellKnownApi();

try {
    final response = api.getWellKnownDid();
    print(response);
} catch on DioException (e) {
    print('Exception when calling WellKnownApi->getWellKnownDid: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWellKnownJwks**

> JsonWebKeySetDto getWellKnownJwks()

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';

final api = AffinidiTdkIamClient().getWellKnownApi();

try {
    final response = api.getWellKnownJwks();
    print(response);
} catch on DioException (e) {
    print('Exception when calling WellKnownApi->getWellKnownJwks: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**JsonWebKeySetDto**](JsonWebKeySetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
