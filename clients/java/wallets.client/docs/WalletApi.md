# WalletApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                          | HTTP request                                            | Description |
| --------------------------------------------------------------- | ------------------------------------------------------- | ----------- |
| [**createServiceEndpoint**](WalletApi.md#createServiceEndpoint) | **POST** /v2/wallets/{walletId}/services                |             |
| [**createWallet**](WalletApi.md#createWallet)                   | **POST** /v1/wallets                                    |             |
| [**createWalletKey**](WalletApi.md#createWalletKey)             | **POST** /v2/wallets/{walletId}/keys                    |             |
| [**createWalletV2**](WalletApi.md#createWalletV2)               | **POST** /v2/wallets                                    |             |
| [**deleteWallet**](WalletApi.md#deleteWallet)                   | **DELETE** /v1/wallets/{walletId}                       |             |
| [**getWallet**](WalletApi.md#getWallet)                         | **GET** /v1/wallets/{walletId}                          |             |
| [**listServiceEndpoints**](WalletApi.md#listServiceEndpoints)   | **GET** /v2/wallets/{walletId}/services                 |             |
| [**listWalletKeys**](WalletApi.md#listWalletKeys)               | **GET** /v2/wallets/{walletId}/keys                     |             |
| [**listWallets**](WalletApi.md#listWallets)                     | **GET** /v1/wallets                                     |             |
| [**removeServiceEndpoint**](WalletApi.md#removeServiceEndpoint) | **DELETE** /v2/wallets/{walletId}/services/{serviceId}  |             |
| [**removeWalletKey**](WalletApi.md#removeWalletKey)             | **DELETE** /v2/wallets/{walletId}/keys/{keyId}          |             |
| [**signCredential**](WalletApi.md#signCredential)               | **POST** /v1/wallets/{walletId}/sign-credential         |             |
| [**signCredentialsJwt**](WalletApi.md#signCredentialsJwt)       | **POST** /v2/wallets/{walletId}/credentials/jwt/sign    |             |
| [**signCredentialsLdp**](WalletApi.md#signCredentialsLdp)       | **POST** /v2/wallets/{walletId}/credentials/ldp/sign    |             |
| [**signCredentialsSdJwt**](WalletApi.md#signCredentialsSdJwt)   | **POST** /v2/wallets/{walletId}/credentials/sd-jwt/sign |             |
| [**signJwtToken**](WalletApi.md#signJwtToken)                   | **POST** /v1/wallets/{walletId}/sign-jwt                |             |
| [**signJwtV2**](WalletApi.md#signJwtV2)                         | **POST** /v2/wallets/{walletId}/jwt/sign                | Sign JWT.   |
| [**signPresentationsLdp**](WalletApi.md#signPresentationsLdp)   | **POST** /v2/wallets/{walletId}/presentations/ldp/sign  |             |
| [**updateServiceEndpoint**](WalletApi.md#updateServiceEndpoint) | **PATCH** /v2/wallets/{walletId}/services/{serviceId}   |             |
| [**updateWallet**](WalletApi.md#updateWallet)                   | **PATCH** /v1/wallets/{walletId}                        |             |
| [**updateWalletKey**](WalletApi.md#updateWalletKey)             | **PATCH** /v2/wallets/{walletId}/keys/{keyId}           |             |

## createServiceEndpoint

> ServiceEndpointDto createServiceEndpoint(walletId, serviceEndpointInput)

Add service endpoint to wallet, this applies to did:web only

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        ServiceEndpointInput serviceEndpointInput = new ServiceEndpointInput(); // ServiceEndpointInput | AddServiceEndpoint
        try {
            ServiceEndpointDto result = apiInstance.createServiceEndpoint(walletId, serviceEndpointInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#createServiceEndpoint");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                     | Type                                                | Description        | Notes |
| ------------------------ | --------------------------------------------------- | ------------------ | ----- |
| **walletId**             | **String**                                          | id of the wallet   |       |
| **serviceEndpointInput** | [**ServiceEndpointInput**](ServiceEndpointInput.md) | AddServiceEndpoint |       |

### Return type

[**ServiceEndpointDto**](ServiceEndpointDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers |
| ----------- | ---------------------- | ---------------- |
| **201**     | Service endpoint added | -                |

## createWallet

> CreateWalletResponse createWallet(createWalletInput)

creates a wallet

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        CreateWalletInput createWalletInput = new CreateWalletInput(); // CreateWalletInput | CreateWallet
        try {
            CreateWalletResponse result = apiInstance.createWallet(createWalletInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#createWallet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type                                          | Description  | Notes      |
| --------------------- | --------------------------------------------- | ------------ | ---------- |
| **createWalletInput** | [**CreateWalletInput**](CreateWalletInput.md) | CreateWallet | [optional] |

### Return type

[**CreateWalletResponse**](CreateWalletResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description    | Response headers |
| ----------- | -------------- | ---------------- |
| **201**     | Created        | -                |
| **403**     | ForbiddenError | -                |

## createWalletKey

> WalletKeyDto createWalletKey(walletId, createWalletKeyInput)

Add a new key to the wallet, this applies to did:web only

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        CreateWalletKeyInput createWalletKeyInput = new CreateWalletKeyInput(); // CreateWalletKeyInput | CreateWalletKey
        try {
            WalletKeyDto result = apiInstance.createWalletKey(walletId, createWalletKeyInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#createWalletKey");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                     | Type                                                | Description      | Notes |
| ------------------------ | --------------------------------------------------- | ---------------- | ----- |
| **walletId**             | **String**                                          | id of the wallet |       |
| **createWalletKeyInput** | [**CreateWalletKeyInput**](CreateWalletKeyInput.md) | CreateWalletKey  |       |

### Return type

[**WalletKeyDto**](WalletKeyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers |
| ----------- | ---------------------- | ---------------- |
| **201**     | Key added successfully | -                |

## createWalletV2

> CreateWalletV2Response createWalletV2(createWalletV2Input)

Create v2 wallet

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        CreateWalletV2Input createWalletV2Input = new CreateWalletV2Input(); // CreateWalletV2Input | CreateWallet
        try {
            CreateWalletV2Response result = apiInstance.createWalletV2(createWalletV2Input);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#createWalletV2");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                    | Type                                              | Description  | Notes      |
| ----------------------- | ------------------------------------------------- | ------------ | ---------- |
| **createWalletV2Input** | [**CreateWalletV2Input**](CreateWalletV2Input.md) | CreateWallet | [optional] |

### Return type

[**CreateWalletV2Response**](CreateWalletV2Response.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description    | Response headers |
| ----------- | -------------- | ---------------- |
| **201**     | OK             | -                |
| **403**     | ForbiddenError | -                |

## deleteWallet

> deleteWallet(walletId)

delete wallet by walletId

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        try {
            apiInstance.deleteWallet(walletId);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#deleteWallet");
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
| **walletId** | **String** | id of the wallet |       |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **204**     | Deleted     | -                |

## getWallet

> WalletDto getWallet(walletId)

get wallet details using wallet Id.

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        try {
            WalletDto result = apiInstance.getWallet(walletId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#getWallet");
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
| **walletId** | **String** | id of the wallet |       |

### Return type

[**WalletDto**](WalletDto.md)

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
| **404**     | NotFoundError   | -                |

## listServiceEndpoints

> ListServiceEndpointsOK listServiceEndpoints(walletId)

List service endpoints in wallet, this applies to did:web only

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        try {
            ListServiceEndpointsOK result = apiInstance.listServiceEndpoints(walletId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#listServiceEndpoints");
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
| **walletId** | **String** | id of the wallet |       |

### Return type

[**ListServiceEndpointsOK**](ListServiceEndpointsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | Service endpoints | -                |

## listWalletKeys

> ListWalletKeysOK listWalletKeys(walletId)

List all keys in the wallet, this applies to did:web only

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        try {
            ListWalletKeysOK result = apiInstance.listWalletKeys(walletId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#listWalletKeys");
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
| **walletId** | **String** | id of the wallet |       |

### Return type

[**ListWalletKeysOK**](ListWalletKeysOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Wallet keys | -                |

## listWallets

> WalletsListDto listWallets(didType)

lists all wallets

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        WalletDidType didType = WalletDidType.fromValue("WEB"); // WalletDidType |
        try {
            WalletsListDto result = apiInstance.listWallets(didType);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#listWallets");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name        | Type                     | Description | Notes                       |
| ----------- | ------------------------ | ----------- | --------------------------- |
| **didType** | [**WalletDidType**](.md) |             | [optional] [enum: WEB, KEY] |

### Return type

[**WalletsListDto**](WalletsListDto.md)

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

## removeServiceEndpoint

> removeServiceEndpoint(walletId, serviceId)

Remove service endpoint from wallet, this applies to did:web only

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        String serviceId = "serviceId_example"; // String | id of the service endpoint to remove
        try {
            apiInstance.removeServiceEndpoint(walletId, serviceId);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#removeServiceEndpoint");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description                          | Notes |
| ------------- | ---------- | ------------------------------------ | ----- |
| **walletId**  | **String** | id of the wallet                     |       |
| **serviceId** | **String** | id of the service endpoint to remove |       |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **204**     | Service endpoint removed | -                |

## removeWalletKey

> removeWalletKey(walletId, keyId)

Remove a key from the wallet, this applies to did:web only

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        String keyId = "keyId_example"; // String | id of the key to remove
        try {
            apiInstance.removeWalletKey(walletId, keyId);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#removeWalletKey");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name         | Type       | Description             | Notes |
| ------------ | ---------- | ----------------------- | ----- |
| **walletId** | **String** | id of the wallet        |       |
| **keyId**    | **String** | id of the key to remove |       |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **204**     | Key removed successfully | -                |
| **400**     | BadRequestError          | -                |

## signCredential

> SignCredentialResultDto signCredential(walletId, signCredentialInputDto)

signs credential with the wallet

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        SignCredentialInputDto signCredentialInputDto = new SignCredentialInputDto(); // SignCredentialInputDto | SignCredential
        try {
            SignCredentialResultDto result = apiInstance.signCredential(walletId, signCredentialInputDto);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#signCredential");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                       | Type                                                    | Description      | Notes |
| -------------------------- | ------------------------------------------------------- | ---------------- | ----- |
| **walletId**               | **String**                                              | id of the wallet |       |
| **signCredentialInputDto** | [**SignCredentialInputDto**](SignCredentialInputDto.md) | SignCredential   |       |

### Return type

[**SignCredentialResultDto**](SignCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

## signCredentialsJwt

> SignCredentialsJwtResultDto signCredentialsJwt(walletId, signCredentialsJwtInputDto)

signs credential with the wallet v2

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        SignCredentialsJwtInputDto signCredentialsJwtInputDto = new SignCredentialsJwtInputDto(); // SignCredentialsJwtInputDto | signCredentialsJwt
        try {
            SignCredentialsJwtResultDto result = apiInstance.signCredentialsJwt(walletId, signCredentialsJwtInputDto);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#signCredentialsJwt");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                           | Type                                                            | Description        | Notes |
| ------------------------------ | --------------------------------------------------------------- | ------------------ | ----- |
| **walletId**                   | **String**                                                      | id of the wallet   |       |
| **signCredentialsJwtInputDto** | [**SignCredentialsJwtInputDto**](SignCredentialsJwtInputDto.md) | signCredentialsJwt |       |

### Return type

[**SignCredentialsJwtResultDto**](SignCredentialsJwtResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

## signCredentialsLdp

> SignCredentialsLdpResultDto signCredentialsLdp(walletId, signCredentialsLdpInputDto)

signs credential with the wallet v2

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        SignCredentialsLdpInputDto signCredentialsLdpInputDto = new SignCredentialsLdpInputDto(); // SignCredentialsLdpInputDto | signCredentialsLdp
        try {
            SignCredentialsLdpResultDto result = apiInstance.signCredentialsLdp(walletId, signCredentialsLdpInputDto);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#signCredentialsLdp");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                           | Type                                                            | Description        | Notes |
| ------------------------------ | --------------------------------------------------------------- | ------------------ | ----- |
| **walletId**                   | **String**                                                      | id of the wallet   |       |
| **signCredentialsLdpInputDto** | [**SignCredentialsLdpInputDto**](SignCredentialsLdpInputDto.md) | signCredentialsLdp |       |

### Return type

[**SignCredentialsLdpResultDto**](SignCredentialsLdpResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

## signCredentialsSdJwt

> SignCredentialsDm2SdJwtResultDto signCredentialsSdJwt(walletId, signCredentialsDm2SdJwtInputDto)

signs credential with the wallet v2

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        SignCredentialsDm2SdJwtInputDto signCredentialsDm2SdJwtInputDto = new SignCredentialsDm2SdJwtInputDto(); // SignCredentialsDm2SdJwtInputDto | SignCredentialsDm1SdJwt
        try {
            SignCredentialsDm2SdJwtResultDto result = apiInstance.signCredentialsSdJwt(walletId, signCredentialsDm2SdJwtInputDto);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#signCredentialsSdJwt");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                                | Type                                                                      | Description             | Notes |
| ----------------------------------- | ------------------------------------------------------------------------- | ----------------------- | ----- |
| **walletId**                        | **String**                                                                | id of the wallet        |       |
| **signCredentialsDm2SdJwtInputDto** | [**SignCredentialsDm2SdJwtInputDto**](SignCredentialsDm2SdJwtInputDto.md) | SignCredentialsDm1SdJwt |       |

### Return type

[**SignCredentialsDm2SdJwtResultDto**](SignCredentialsDm2SdJwtResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

## signJwtToken

> SignJwtTokenOK signJwtToken(walletId, signJwtToken)

signs a jwt token with the wallet

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet.
        SignJwtToken signJwtToken = new SignJwtToken(); // SignJwtToken | SignJwtToken
        try {
            SignJwtTokenOK result = apiInstance.signJwtToken(walletId, signJwtToken);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#signJwtToken");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name             | Type                                | Description       | Notes |
| ---------------- | ----------------------------------- | ----------------- | ----- |
| **walletId**     | **String**                          | id of the wallet. |       |
| **signJwtToken** | [**SignJwtToken**](SignJwtToken.md) | SignJwtToken      |       |

### Return type

[**SignJwtTokenOK**](SignJwtTokenOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | SignJwtTokenOK  | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

## signJwtV2

> SignJwtV2ResultDto signJwtV2(walletId, signJwtV2InputDto)

Sign JWT.

Sign a JSON Web Token (JWT).

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        SignJwtV2InputDto signJwtV2InputDto = new SignJwtV2InputDto(); // SignJwtV2InputDto | SignJwtV2
        try {
            SignJwtV2ResultDto result = apiInstance.signJwtV2(walletId, signJwtV2InputDto);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#signJwtV2");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type                                          | Description      | Notes |
| --------------------- | --------------------------------------------- | ---------------- | ----- |
| **walletId**          | **String**                                    | id of the wallet |       |
| **signJwtV2InputDto** | [**SignJwtV2InputDto**](SignJwtV2InputDto.md) | SignJwtV2        |       |

### Return type

[**SignJwtV2ResultDto**](SignJwtV2ResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | SignJwtOK       | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

## signPresentationsLdp

> SignPresentationLdpResultDto signPresentationsLdp(walletId, signPresentationLdpInputDto)

signs presentation with the wallet

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        SignPresentationLdpInputDto signPresentationLdpInputDto = new SignPresentationLdpInputDto(); // SignPresentationLdpInputDto | signPresentationLdp
        try {
            SignPresentationLdpResultDto result = apiInstance.signPresentationsLdp(walletId, signPresentationLdpInputDto);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#signPresentationsLdp");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                            | Type                                                              | Description         | Notes |
| ------------------------------- | ----------------------------------------------------------------- | ------------------- | ----- |
| **walletId**                    | **String**                                                        | id of the wallet    |       |
| **signPresentationLdpInputDto** | [**SignPresentationLdpInputDto**](SignPresentationLdpInputDto.md) | signPresentationLdp |       |

### Return type

[**SignPresentationLdpResultDto**](SignPresentationLdpResultDto.md)

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

## updateServiceEndpoint

> ServiceEndpointDto updateServiceEndpoint(walletId, serviceId, updateServiceEndpointInput)

Update service endpoint in wallet, this applies to did:web only

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        String serviceId = "serviceId_example"; // String | id of the service endpoint to update
        UpdateServiceEndpointInput updateServiceEndpointInput = new UpdateServiceEndpointInput(); // UpdateServiceEndpointInput | UpdateServiceEndpoint
        try {
            ServiceEndpointDto result = apiInstance.updateServiceEndpoint(walletId, serviceId, updateServiceEndpointInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#updateServiceEndpoint");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                           | Type                                                            | Description                          | Notes |
| ------------------------------ | --------------------------------------------------------------- | ------------------------------------ | ----- |
| **walletId**                   | **String**                                                      | id of the wallet                     |       |
| **serviceId**                  | **String**                                                      | id of the service endpoint to update |       |
| **updateServiceEndpointInput** | [**UpdateServiceEndpointInput**](UpdateServiceEndpointInput.md) | UpdateServiceEndpoint                |       |

### Return type

[**ServiceEndpointDto**](ServiceEndpointDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **200**     | Service endpoint updated | -                |

## updateWallet

> WalletDto updateWallet(walletId, updateWalletInput)

update wallet details using wallet Id.

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        UpdateWalletInput updateWalletInput = new UpdateWalletInput(); // UpdateWalletInput | UpdateWallet
        try {
            WalletDto result = apiInstance.updateWallet(walletId, updateWalletInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#updateWallet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type                                          | Description      | Notes |
| --------------------- | --------------------------------------------- | ---------------- | ----- |
| **walletId**          | **String**                                    | id of the wallet |       |
| **updateWalletInput** | [**UpdateWalletInput**](UpdateWalletInput.md) | UpdateWallet     |       |

### Return type

[**WalletDto**](WalletDto.md)

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

## updateWalletKey

> WalletKeyDto updateWalletKey(walletId, keyId, updateWalletKeyInput)

Update a wallet key&#39;s verification relationships, this applies to did:web only

### Example

```java
// Import classes:
import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.ApiException;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.*;
import com.affinidi.tdk.wallets.client.models.*;
import com.affinidi.tdk.wallets.client.apis.WalletApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cwe");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        WalletApi apiInstance = new WalletApi(defaultClient);
        String walletId = "walletId_example"; // String | id of the wallet
        String keyId = "keyId_example"; // String | wallet-scoped key identifier to update
        UpdateWalletKeyInput updateWalletKeyInput = new UpdateWalletKeyInput(); // UpdateWalletKeyInput | UpdateWalletKey
        try {
            WalletKeyDto result = apiInstance.updateWalletKey(walletId, keyId, updateWalletKeyInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WalletApi#updateWalletKey");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                     | Type                                                | Description                            | Notes |
| ------------------------ | --------------------------------------------------- | -------------------------------------- | ----- |
| **walletId**             | **String**                                          | id of the wallet                       |       |
| **keyId**                | **String**                                          | wallet-scoped key identifier to update |       |
| **updateWalletKeyInput** | [**UpdateWalletKeyInput**](UpdateWalletKeyInput.md) | UpdateWalletKey                        |       |

### Return type

[**WalletKeyDto**](WalletKeyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **200**     | Key updated successfully | -                |
| **400**     | BadRequestError          | -                |
