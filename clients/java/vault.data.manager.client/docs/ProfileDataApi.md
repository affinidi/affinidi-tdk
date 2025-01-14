# ProfileDataApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                       | HTTP request                              | Description |
| ------------------------------------------------------------ | ----------------------------------------- | ----------- |
| [**queryProfileData**](ProfileDataApi.md#queryProfileData)   | **GET** /v1/nodes/{nodeId}/profile-data   |             |
| [**updateProfileData**](ProfileDataApi.md#updateProfileData) | **PATCH** /v1/nodes/{nodeId}/profile-data |             |

## queryProfileData

> QueryProfileDataOK queryProfileData(nodeId, dek, query)

Retrieves information from a profile.

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.ProfileDataApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        ProfileDataApi apiInstance = new ProfileDataApi(defaultClient);
        String nodeId = "nodeId_example"; // String | the nodeId of the node being operated on
        String dek = "dek_example"; // String | A base64url encoded data encryption key, encrypted using VFS public
        String query = "query_example"; // String | data query, TBD maybe encode it with base64 to make it url friendly?
        try {
            QueryProfileDataOK result = apiInstance.queryProfileData(nodeId, dek, query);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ProfileDataApi#queryProfileData");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name       | Type       | Description                                                          | Notes      |
| ---------- | ---------- | -------------------------------------------------------------------- | ---------- |
| **nodeId** | **String** | the nodeId of the node being operated on                             |            |
| **dek**    | **String** | A base64url encoded data encryption key, encrypted using VFS public  |            |
| **query**  | **String** | data query, TBD maybe encode it with base64 to make it url friendly? | [optional] |

### Return type

[**QueryProfileDataOK**](QueryProfileDataOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers                                                                                                  |
| ----------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | QueryProfileDataOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## updateProfileData

> UpdateProfileDataOK updateProfileData(nodeId, updateProfileDataInput)

Updates the profile with the given data

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.ProfileDataApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        ProfileDataApi apiInstance = new ProfileDataApi(defaultClient);
        String nodeId = "nodeId_example"; // String |
        UpdateProfileDataInput updateProfileDataInput = new UpdateProfileDataInput(); // UpdateProfileDataInput | Updates the schema with the given data
        try {
            UpdateProfileDataOK result = apiInstance.updateProfileData(nodeId, updateProfileDataInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ProfileDataApi#updateProfileData");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                       | Type                                                    | Description                            | Notes |
| -------------------------- | ------------------------------------------------------- | -------------------------------------- | ----- |
| **nodeId**                 | **String**                                              |                                        |       |
| **updateProfileDataInput** | [**UpdateProfileDataInput**](UpdateProfileDataInput.md) | Updates the schema with the given data |       |

### Return type

[**UpdateProfileDataOK**](UpdateProfileDataOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | UpdateSchemaOK  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
