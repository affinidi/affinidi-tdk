# UpdateConfigurationByIdInput

## Properties

| Name                          | Type                                                                                            | Description                                                                                                                                      | Notes      |
| ----------------------------- | ----------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **name**                      | **str**                                                                                         | The name of the configuration to quickly identify the resource.                                                                                  | [optional] |
| **wallet_ari**                | **str**                                                                                         | The unique resource identifier of the Wallet used to sign the request token.                                                                     | [optional] |
| **iota_response_webhook_url** | **str**                                                                                         | The webhook URL is used for callback when the data is ready.                                                                                     | [optional] |
| **enable_verification**       | **bool**                                                                                        | Cryptographically verifies the data shared by the user when enabled.                                                                             | [optional] |
| **enable_consent_audit_log**  | **bool**                                                                                        | Records the user&#39;s consent when they share their data, including the type of data shared when enabled.                                       | [optional] |
| **token_max_age**             | **float**                                                                                       | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] |
| **description**               | **str**                                                                                         | An optional description of what the configuration is used for.                                                                                   | [optional] |
| **client_metadata**           | [**UpdateConfigurationByIdInputClientMetadata**](UpdateConfigurationByIdInputClientMetadata.md) |                                                                                                                                                  | [optional] |
| **mode**                      | **str**                                                                                         | Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.                                                      | [optional] |
| **redirect_uris**             | **List[str]**                                                                                   | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. | [optional] |
| **enable_idv_providers**      | **bool**                                                                                        | Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.                                | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.update_configuration_by_id_input import UpdateConfigurationByIdInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateConfigurationByIdInput from a JSON string
update_configuration_by_id_input_instance = UpdateConfigurationByIdInput.from_json(json)
# print the JSON string representation of the object
print UpdateConfigurationByIdInput.to_json()

# convert the object into a dict
update_configuration_by_id_input_dict = update_configuration_by_id_input_instance.to_dict()
# create an instance of UpdateConfigurationByIdInput from a dict
update_configuration_by_id_input_from_dict = UpdateConfigurationByIdInput.from_dict(update_configuration_by_id_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
