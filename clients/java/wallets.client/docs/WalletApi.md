# WalletApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                        | HTTP request                                            | Description |
| ------------------------------------------------------------- | ------------------------------------------------------- | ----------- |
| [**createWallet**](WalletApi.md#createWallet)                 | **POST** /v1/wallets                                    |             |
| [**deleteWallet**](WalletApi.md#deleteWallet)                 | **DELETE** /v1/wallets/{walletId}                       |             |
| [**getWallet**](WalletApi.md#getWallet)                       | **GET** /v1/wallets/{walletId}                          |             |
| [**listWallets**](WalletApi.md#listWallets)                   | **GET** /v1/wallets                                     |             |
| [**signCredential**](WalletApi.md#signCredential)             | **POST** /v1/wallets/{walletId}/sign-credential         |             |
| [**signCredentialsJwt**](WalletApi.md#signCredentialsJwt)     | **POST** /v2/wallets/{walletId}/credentials/jwt/sign    |             |
| [**signCredentialsLdp**](WalletApi.md#signCredentialsLdp)     | **POST** /v2/wallets/{walletId}/credentials/ldp/sign    |             |
| [**signCredentialsSdJwt**](WalletApi.md#signCredentialsSdJwt) | **POST** /v2/wallets/{walletId}/credentials/sd-jwt/sign |             |
| [**signJwtToken**](WalletApi.md#signJwtToken)                 | **POST** /v1/wallets/{walletId}/sign-jwt                |             |
| [**signPresentationsLdp**](WalletApi.md#signPresentationsLdp) | **POST** /v2/wallets/{walletId}/presentations/ldp/sign  |             |
| [**updateWallet**](WalletApi.md#updateWallet)                 | **PATCH** /v1/wallets/{walletId}                        |             |

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
        String didType = "WEB"; // String |
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

| Name        | Type       | Description | Notes                       |
| ----------- | ---------- | ----------- | --------------------------- |
| **didType** | **String** |             | [optional] [enum: WEB, KEY] |

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
