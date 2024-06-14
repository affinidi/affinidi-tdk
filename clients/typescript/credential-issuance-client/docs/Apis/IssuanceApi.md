# IssuanceApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                            | HTTP request                                        | Description |
| ------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**issuanceState**](IssuanceApi.md#issuanceState) | **GET** /v1/{projectId}/issuance/state/{issuanceId} |             |
| [**listIssuance**](IssuanceApi.md#listIssuance)   | **GET** /v1/{projectId}/issuance                    |             |
| [**startIssuance**](IssuanceApi.md#startIssuance) | **POST** /v1/{projectId}/issuance/start             |             |

<a name="issuanceState"></a>

# **issuanceState**

> IssuanceStateResponse issuanceState(issuanceId, projectId)

    Get issuance status

### Parameters

| Name           | Type       | Description         | Notes             |
| -------------- | ---------- | ------------------- | ----------------- |
| **issuanceId** | **String** |                     | [default to null] |
| **projectId**  | **String** | Affinidi project id | [default to null] |

### Return type

[**IssuanceStateResponse**](../Models/IssuanceStateResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listIssuance"></a>

# **listIssuance**

> ListIssuanceResponse listIssuance(projectId)

    List all issuances for Project

### Parameters

| Name          | Type       | Description         | Notes             |
| ------------- | ---------- | ------------------- | ----------------- |
| **projectId** | **String** | Affinidi project id | [default to null] |

### Return type

[**ListIssuanceResponse**](../Models/ListIssuanceResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="startIssuance"></a>

# **startIssuance**

> StartIssuanceResponse startIssuance(projectId, StartIssuanceInput)

    Endpoint used b websites to start the issuance process

### Parameters

| Name                   | Type                                                      | Description                    | Notes             |
| ---------------------- | --------------------------------------------------------- | ------------------------------ | ----------------- |
| **projectId**          | **String**                                                | Affinidi project id            | [default to null] |
| **StartIssuanceInput** | [**StartIssuanceInput**](../Models/StartIssuanceInput.md) | Request body to start issuance |                   |

### Return type

[**StartIssuanceResponse**](../Models/StartIssuanceResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
