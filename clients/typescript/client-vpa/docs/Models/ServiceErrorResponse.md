# ServiceErrorResponse

## Properties

| Name        | Type                                              | Description                                           | Notes                        |
| ----------- | ------------------------------------------------- | ----------------------------------------------------- | ---------------------------- |
| **debugId** | **UUID**                                          | unique id for correlating this specific error to logs | [default to null]            |
| **name**    | **String**                                        | name of the error                                     | [default to null]            |
| **code**    | **String**                                        | backwards compatible Affinidi error code              | [default to null]            |
| **details** | [**List**](ServiceErrorResponse_details_inner.md) | error details                                         | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
