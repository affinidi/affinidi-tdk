# AccountsApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                                  | HTTP request                           | Description |
| ----------------------------------------------------------------------- | -------------------------------------- | ----------- |
| [**createAccount**](AccountsApi.md#createAccount)                       | **POST** /v1/accounts                  |             |
| [**createAccountWithProfile**](AccountsApi.md#createAccountWithProfile) | **POST** /v1/accounts/profiles         |             |
| [**deleteAccount**](AccountsApi.md#deleteAccount)                       | **DELETE** /v1/accounts/{accountIndex} |             |
| [**listAccounts**](AccountsApi.md#listAccounts)                         | **GET** /v1/accounts                   |             |
| [**listProfiles**](AccountsApi.md#listProfiles)                         | **GET** /v1/accounts/profiles          |             |
| [**patchAccount**](AccountsApi.md#patchAccount)                         | **PATCH** /v1/accounts/{accountIndex}  |             |
| [**updateAccount**](AccountsApi.md#updateAccount)                       | **PUT** /v1/accounts/{accountIndex}    |             |

## createAccount

> CreateAccountOK createAccount(createAccountInput)

creates account

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.AccountsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        AccountsApi apiInstance = new AccountsApi(defaultClient);
        CreateAccountInput createAccountInput = new CreateAccountInput(); // CreateAccountInput | CreateAccount
        try {
            CreateAccountOK result = apiInstance.createAccount(createAccountInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AccountsApi#createAccount");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                   | Type                                            | Description   | Notes |
| ---------------------- | ----------------------------------------------- | ------------- | ----- |
| **createAccountInput** | [**CreateAccountInput**](CreateAccountInput.md) | CreateAccount |       |

### Return type

[**CreateAccountOK**](CreateAccountOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CreateAccountOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## createAccountWithProfile

> CreateAccountWithProfileOK createAccountWithProfile(createAccountWithProfileInput)

creates account and corresponding profile at the same time

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.AccountsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        AccountsApi apiInstance = new AccountsApi(defaultClient);
        CreateAccountWithProfileInput createAccountWithProfileInput = new CreateAccountWithProfileInput(); // CreateAccountWithProfileInput | CreateAccountWithProfile
        try {
            CreateAccountWithProfileOK result = apiInstance.createAccountWithProfile(createAccountWithProfileInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AccountsApi#createAccountWithProfile");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                              | Type                                                                  | Description              | Notes |
| --------------------------------- | --------------------------------------------------------------------- | ------------------------ | ----- |
| **createAccountWithProfileInput** | [**CreateAccountWithProfileInput**](CreateAccountWithProfileInput.md) | CreateAccountWithProfile |       |

### Return type

[**CreateAccountWithProfileOK**](CreateAccountWithProfileOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                | Response headers                                                                                                  |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CreateAccountWithProfileOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## deleteAccount

> DeleteAccountDto deleteAccount(accountIndex)

Delete account.

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.AccountsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        AccountsApi apiInstance = new AccountsApi(defaultClient);
        Integer accountIndex = 56; // Integer |
        try {
            DeleteAccountDto result = apiInstance.deleteAccount(accountIndex);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AccountsApi#deleteAccount");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name             | Type        | Description | Notes |
| ---------------- | ----------- | ----------- | ----- |
| **accountIndex** | **Integer** |             |       |

### Return type

[**DeleteAccountDto**](DeleteAccountDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **202**     | DeleteAccountOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## listAccounts

> ListAccountsDto listAccounts(limit, exclusiveStartKey)

List accounts of associated profiles.

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.AccountsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        AccountsApi apiInstance = new AccountsApi(defaultClient);
        Integer limit = 50; // Integer | Maximum number of accounts to fetch in a list
        String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
        try {
            ListAccountsDto result = apiInstance.listAccounts(limit, exclusiveStartKey);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AccountsApi#listAccounts");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                      |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------- |
| **limit**             | **Integer** | Maximum number of accounts to fetch in a list                                                                                                                  | [optional] [default to 50] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional]                 |

### Return type

[**ListAccountsDto**](ListAccountsDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListAccountsOK  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## listProfiles

> ListProfilesOK listProfiles()

lists children of the root node with accounts

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.AccountsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        AccountsApi apiInstance = new AccountsApi(defaultClient);
        try {
            ListProfilesOK result = apiInstance.listProfiles();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AccountsApi#listProfiles");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListProfilesOK**](ListProfilesOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListProfilesOK  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## patchAccount

> UpdateAccountDto patchAccount(accountIndex, patchAccountInput)

Patch account.

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.AccountsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        AccountsApi apiInstance = new AccountsApi(defaultClient);
        Integer accountIndex = 56; // Integer |
        PatchAccountInput patchAccountInput = new PatchAccountInput(); // PatchAccountInput | PatchAccount
        try {
            UpdateAccountDto result = apiInstance.patchAccount(accountIndex, patchAccountInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AccountsApi#patchAccount");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type                                          | Description  | Notes |
| --------------------- | --------------------------------------------- | ------------ | ----- |
| **accountIndex**      | **Integer**                                   |              |       |
| **patchAccountInput** | [**PatchAccountInput**](PatchAccountInput.md) | PatchAccount |       |

### Return type

[**UpdateAccountDto**](UpdateAccountDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | PatchAccountOK  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## updateAccount

> UpdateAccountDto updateAccount(accountIndex, updateAccountInput)

Update account.

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.AccountsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        AccountsApi apiInstance = new AccountsApi(defaultClient);
        Integer accountIndex = 56; // Integer |
        UpdateAccountInput updateAccountInput = new UpdateAccountInput(); // UpdateAccountInput | UpdateAccount
        try {
            UpdateAccountDto result = apiInstance.updateAccount(accountIndex, updateAccountInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AccountsApi#updateAccount");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                   | Type                                            | Description   | Notes |
| ---------------------- | ----------------------------------------------- | ------------- | ----- |
| **accountIndex**       | **Integer**                                     |               |       |
| **updateAccountInput** | [**UpdateAccountInput**](UpdateAccountInput.md) | UpdateAccount |       |

### Return type

[**UpdateAccountDto**](UpdateAccountDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | UpdateAccountOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
