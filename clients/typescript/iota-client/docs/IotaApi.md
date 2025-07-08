# IotaApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                        | HTTP request                                        | Description |
| ----------------------------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**awsExchangeCredentials**](#awsexchangecredentials)                         | **POST** /v1/aws-exchange-credentials               |             |
| [**awsExchangeCredentialsProjectToken**](#awsexchangecredentialsprojecttoken) | **POST** /v1/aws-exchange-credentials/project-token |             |
| [**fetchIotaVpResponse**](#fetchiotavpresponse)                               | **POST** /v1/fetch-iota-response                    |             |
| [**initiateDataSharingRequest**](#initiatedatasharingrequest)                 | **POST** /v1/initiate-data-sharing-request          |             |
| [**iotaExchangeCredentials**](#iotaexchangecredentials)                       | **POST** /v1/exchange-credentials                   |             |

# **awsExchangeCredentials**

> AwsExchangeCredentialsOK awsExchangeCredentials(awsExchangeCredentials)

Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.

### Example

```typescript
import {
  IotaApi,
  Configuration,
  AwsExchangeCredentials,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new IotaApi(configuration)

let awsExchangeCredentials: AwsExchangeCredentials //AwsExchangeCredentials

const { status, data } = await apiInstance.awsExchangeCredentials(
  awsExchangeCredentials,
)
```

### Parameters

| Name                       | Type                       | Description            | Notes |
| -------------------------- | -------------------------- | ---------------------- | ----- |
| **awsExchangeCredentials** | **AwsExchangeCredentials** | AwsExchangeCredentials |       |

### Return type

**AwsExchangeCredentialsOK**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers                                                                                                  |
| ----------- | ------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | AwsExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **awsExchangeCredentialsProjectToken**

> IotaExchangeCredentialsOK awsExchangeCredentialsProjectToken(awsExchangeCredentialsProjectToken)

Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```typescript
import {
  IotaApi,
  Configuration,
  AwsExchangeCredentialsProjectToken,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new IotaApi(configuration)

let awsExchangeCredentialsProjectToken: AwsExchangeCredentialsProjectToken //AwsExchangeCredentialsProjectToken

const { status, data } = await apiInstance.awsExchangeCredentialsProjectToken(
  awsExchangeCredentialsProjectToken,
)
```

### Parameters

| Name                                   | Type                                   | Description                        | Notes |
| -------------------------------------- | -------------------------------------- | ---------------------------------- | ----- |
| **awsExchangeCredentialsProjectToken** | **AwsExchangeCredentialsProjectToken** | AwsExchangeCredentialsProjectToken |       |

### Return type

**IotaExchangeCredentialsOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers                                                                                                  |
| ----------- | ------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | IotaExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetchIotaVpResponse**

> FetchIOTAVPResponseOK fetchIotaVpResponse(fetchIOTAVPResponseInput)

Fetches the client\'s callback that contains the user\'s shared data in a Verifiable Presentation format after a successful data-sharing flow.

### Example

```typescript
import {
  IotaApi,
  Configuration,
  FetchIOTAVPResponseInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new IotaApi(configuration)

let fetchIOTAVPResponseInput: FetchIOTAVPResponseInput //FetchIOTAVPResponseInput

const { status, data } = await apiInstance.fetchIotaVpResponse(
  fetchIOTAVPResponseInput,
)
```

### Parameters

| Name                         | Type                         | Description              | Notes |
| ---------------------------- | ---------------------------- | ------------------------ | ----- |
| **fetchIOTAVPResponseInput** | **FetchIOTAVPResponseInput** | FetchIOTAVPResponseInput |       |

### Return type

**FetchIOTAVPResponseOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers                                                                                                  |
| ----------- | --------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | FetchIOTAVPResponseOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError       | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **404**     | NotFoundError         | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateDataSharingRequest**

> InitiateDataSharingRequestOK initiateDataSharingRequest(initiateDataSharingRequestInput)

Generates the request token for the Redirect mode to initiate the data-sharing flow.

### Example

```typescript
import {
  IotaApi,
  Configuration,
  InitiateDataSharingRequestInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new IotaApi(configuration)

let initiateDataSharingRequestInput: InitiateDataSharingRequestInput //InitiateDataSharingRequestInput

const { status, data } = await apiInstance.initiateDataSharingRequest(
  initiateDataSharingRequestInput,
)
```

### Parameters

| Name                                | Type                                | Description                     | Notes |
| ----------------------------------- | ----------------------------------- | ------------------------------- | ----- |
| **initiateDataSharingRequestInput** | **InitiateDataSharingRequestInput** | InitiateDataSharingRequestInput |       |

### Return type

**InitiateDataSharingRequestOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                  | Response headers                                                                                                  |
| ----------- | ---------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | InitiateDataSharingRequestOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError               | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iotaExchangeCredentials**

> IotaExchangeCredentialsOK iotaExchangeCredentials(iotaExchangeCredentials)

Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```typescript
import {
  IotaApi,
  Configuration,
  IotaExchangeCredentials,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new IotaApi(configuration)

let iotaExchangeCredentials: IotaExchangeCredentials //IotaAwsExchangeCredentials

const { status, data } = await apiInstance.iotaExchangeCredentials(
  iotaExchangeCredentials,
)
```

### Parameters

| Name                        | Type                        | Description                | Notes |
| --------------------------- | --------------------------- | -------------------------- | ----- |
| **iotaExchangeCredentials** | **IotaExchangeCredentials** | IotaAwsExchangeCredentials |       |

### Return type

**IotaExchangeCredentialsOK**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers                                                                                                  |
| ----------- | ------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | IotaExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
