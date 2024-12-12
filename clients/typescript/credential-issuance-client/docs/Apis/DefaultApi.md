# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                               | HTTP request                                                                            | Description               |
| -------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ------------------------- |
| [**changeCredentialStatus**](DefaultApi.md#changeCredentialStatus)   | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status        | change credential status. |
| [**listIssuanceDataRecords**](DefaultApi.md#listIssuanceDataRecords) | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records | List records              |

<a name="changeCredentialStatus"></a>

# **changeCredentialStatus**

> FlowData changeCredentialStatus(projectId, configurationId)

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

<a name="listIssuanceDataRecords"></a>

# **listIssuanceDataRecords**

> ListIssuanceRecordResponse listIssuanceDataRecords(projectId, configurationId, limit, exclusiveStartKey)

List records

    Retrieve a list of issuance data records.

### Parameters

| Name                  | Type        | Description                                              | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------- | ---------------------------- |
| **projectId**         | **String**  | Affinidi project id                                      | [default to null]            |
| **configurationId**   | **String**  | The id of the issuance configuration                     | [default to null]            |
| **limit**             | **Integer** | Maximum number of records to fetch in a list             | [optional] [default to 10]   |
| **exclusiveStartKey** | **String**  | exclusiveStartKey for retrieving the next batch of data. | [optional] [default to null] |

### Return type

[**ListIssuanceRecordResponse**](../Models/ListIssuanceRecordResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
