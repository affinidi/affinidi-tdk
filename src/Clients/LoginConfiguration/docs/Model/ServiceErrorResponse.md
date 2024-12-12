# # ServiceErrorResponse

## Properties

| Name         | Type                                                                                                                        | Description                                           | Notes      |
| ------------ | --------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------- | ---------- |
| **debug_id** | **string**                                                                                                                  | unique id for correlating this specific error to logs |
| **name**     | **string**                                                                                                                  | name of the error                                     |
| **code**     | **string**                                                                                                                  | backwards compatible Affinidi error code              |
| **details**  | [**\AffinidiTdk\Clients\LoginConfiguration\Model\ServiceErrorResponseDetailsInner[]**](ServiceErrorResponseDetailsInner.md) | error details                                         | [optional] |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
