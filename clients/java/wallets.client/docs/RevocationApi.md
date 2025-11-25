# RevocationApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                                              | HTTP request                                                                       | Description                        |
| ----------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| [**getRevocationCredentialStatus**](RevocationApi.md#getRevocationCredentialStatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |                                    |
| [**getRevocationListCredential**](RevocationApi.md#getRevocationListCredential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| [**revokeCredential**](RevocationApi.md#revokeCredential)                           | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |
| [**revokeCredentials**](RevocationApi.md#revokeCredentials)                         | **POST** /v2/wallets/{walletId}/credentials/revoke                                 | Revoke Credentials.                |

## getRevocationCredentialStatus

> GetRevocationListCredentialResultDto getRevocationCredentialStatus(projectId, walletId, statusId)

Get revocation status list as RevocationListCredential

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.RevocationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        RevocationApi apiInstance = new RevocationApi(defaultClient);
        String projectId = "projectId_example"; // String | Description for projectId.
        String walletId = "walletId_example"; // String | Description for walletId.
        String statusId = "statusId_example"; // String | Description for statusId.
        try {
            GetRevocationListCredentialResultDto result = apiInstance.getRevocationCredentialStatus(projectId, walletId, statusId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling RevocationApi#getRevocationCredentialStatus");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description                | Notes |
| ------------- | ---------- | -------------------------- | ----- |
| **projectId** | **String** | Description for projectId. |       |
| **walletId**  | **String** | Description for walletId.  |       |
| **statusId**  | **String** | Description for statusId.  |       |

### Return type

[**GetRevocationListCredentialResultDto**](GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                     | Response headers |
| ----------- | ------------------------------- | ---------------- |
| **200**     | GetRevocationCredentialStatusOK | -                |
| **404**     | NotFoundError                   | -                |

## getRevocationListCredential

> GetRevocationListCredentialResultDto getRevocationListCredential(listId, walletId)

Return revocation list credential.

Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.RevocationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        RevocationApi apiInstance = new RevocationApi(defaultClient);
        String listId = "listId_example"; // String |
        String walletId = "walletId_example"; // String | id of the wallet
        try {
            GetRevocationListCredentialResultDto result = apiInstance.getRevocationListCredential(listId, walletId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling RevocationApi#getRevocationListCredential");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name         | Type       | Description      | Notes |
| ------------ | ---------- | ---------------- | ----- |
| **listId**   | **String** |                  |       |
| **walletId** | **String** | id of the wallet |       |

### Return type

[**GetRevocationListCredentialResultDto**](GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

## revokeCredential

> revokeCredential(walletId, revokeCredentialInput)

Revoke Credential.

Update index/credetial at appropriate revocation list (set revoken is true).

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.RevocationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        RevocationApi apiInstance = new RevocationApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        RevokeCredentialInput revokeCredentialInput = new RevokeCredentialInput(); // RevokeCredentialInput | RevokeCredential
        try {
            apiInstance.revokeCredential(walletId, revokeCredentialInput);
        } catch (ApiException e) {
            System.err.println("Exception when calling RevocationApi#revokeCredential");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                      | Type                                                  | Description      | Notes |
| ------------------------- | ----------------------------------------------------- | ---------------- | ----- |
| **walletId**              | **String**                                            | id of the wallet |       |
| **revokeCredentialInput** | [**RevokeCredentialInput**](RevokeCredentialInput.md) | RevokeCredential |       |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

## revokeCredentials

> revokeCredentials(walletId, revokeCredentialsInput)

Revoke Credentials.

Update index/credential at appropriate revocation list (set revoked is true).

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.RevocationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        RevocationApi apiInstance = new RevocationApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        RevokeCredentialsInput revokeCredentialsInput = new RevokeCredentialsInput(); // RevokeCredentialsInput | RevokeCredentials
        try {
            apiInstance.revokeCredentials(walletId, revokeCredentialsInput);
        } catch (ApiException e) {
            System.err.println("Exception when calling RevocationApi#revokeCredentials");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                       | Type                                                    | Description       | Notes |
| -------------------------- | ------------------------------------------------------- | ----------------- | ----- |
| **walletId**               | **String**                                              | id of the wallet  |       |
| **revokeCredentialsInput** | [**RevokeCredentialsInput**](RevokeCredentialsInput.md) | RevokeCredentials |       |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |
