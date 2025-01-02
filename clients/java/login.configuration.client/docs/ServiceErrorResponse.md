# ServiceErrorResponse

Service Error Response

## Properties

| Name        | Type                                                                                    | Description                                           | Notes      |
| ----------- | --------------------------------------------------------------------------------------- | ----------------------------------------------------- | ---------- |
| **debugId** | **UUID**                                                                                | unique id for correlating this specific error to logs |            |
| **name**    | **String**                                                                              | name of the error                                     |            |
| **code**    | **String**                                                                              | backwards compatible Affinidi error code              |            |
| **details** | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) | error details                                         | [optional] |
