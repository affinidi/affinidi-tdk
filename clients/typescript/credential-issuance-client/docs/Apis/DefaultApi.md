# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                               | HTTP request                                                                            | Description                   |
| -------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ----------------------------- |
| [**changeCredentialSatatus**](DefaultApi.md#changeCredentialSatatus) | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status        | change credential status.     |
| [**getStatusList**](DefaultApi.md#getStatusList)                     | **GET** /v1/{projectId}/status-list/{statusListId}                                      | Return status list credential |
| [**listIssuanceDataRecords**](DefaultApi.md#listIssuanceDataRecords) | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records | List records                  |

<a name="changeCredentialSatatus"></a>

# **changeCredentialSatatus**

> FlowData changeCredentialSatatus(projectId, configurationId)

change credential status.

    change credential status.

### Parameters

| Name                | Type       | Description      | Notes             |
| ------------------- | ---------- | ---------------- | ----------------- |
| **projectId**       | **String** | project id       | [default to null] |
| **configurationId** | **String** | configuration id | [default to null] |

### Return type

[**FlowData**](../Models/FlowData.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getStatusList"></a>

# **getStatusList**

> GetStatusListResultDto getStatusList(projectId, statusListId)

Return status list credential

    Return status list credential

### Parameters

| Name             | Type       | Description           | Notes             |
| ---------------- | ---------- | --------------------- | ----------------- |
| **projectId**    | **String** |                       | [default to null] |
| **statusListId** | **String** | id of the status list | [default to null] |

### Return type

[**GetStatusListResultDto**](../Models/GetStatusListResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listIssuanceDataRecords"></a>

# **listIssuanceDataRecords**

> ListIssuanceRecordResponse listIssuanceDataRecords(limit, exclusiveStartKey)

List records

    Retrieve a list of issuance data records.

### Parameters

| Name                  | Type        | Description                                              | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------- | ---------------------------- |
| **limit**             | **Integer** | Maximum number of records to fetch in a list             | [optional] [default to 10]   |
| **exclusiveStartKey** | **String**  | exclusiveStartKey for retrieving the next batch of data. | [optional] [default to null] |

### Return type

[**ListIssuanceRecordResponse**](../Models/ListIssuanceRecordResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json