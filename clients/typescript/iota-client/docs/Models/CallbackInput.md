# CallbackInput

## Properties

| Name                        | Type       | Description                                                                                                        | Notes                        |
| --------------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------ | ---------------------------- |
| **state**                   | **String** | A string that must be a valid UUID (version 1-5).                                                                  | [default to null]            |
| **presentation_submission** | **String** | A string that must be a valid JSON object. The structure of presentation submission should follow OID4VP standard. | [optional] [default to null] |
| **vp_token**                | **String** | A string that must be a valid JSON object. Ensure to escape special characters properly..                          | [optional] [default to null] |
| **error**                   | **String** | The error should follow the OAuth2 error format (e.g. invalid_request, login_required). Defaults to access_denied  | [optional] [default to null] |
| **error_description**       | **String** | Description of the error in a human readable format                                                                | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
