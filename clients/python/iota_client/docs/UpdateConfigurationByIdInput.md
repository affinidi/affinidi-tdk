# UpdateConfigurationByIdInput

## Properties

| Name                          | Type                                                                            | Description                                                                                                                                                                        | Notes      |
| ----------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                      | **str**                                                                         | The name of the config                                                                                                                                                             | [optional] |
| **wallet_ari**                | **str**                                                                         | The wallet Ari that will be used to sign                                                                                                                                           | [optional] |
| **iota_response_webhook_url** | **str**                                                                         | webhook to call when data is ready                                                                                                                                                 | [optional] |
| **enable_verification**       | **bool**                                                                        |                                                                                                                                                                                    | [optional] |
| **enable_consent_audit_log**  | **bool**                                                                        |                                                                                                                                                                                    | [optional] |
| **token_max_age**             | **float**                                                                       | token time to live in seconds                                                                                                                                                      | [optional] |
| **description**               | **str**                                                                         | The description of the config                                                                                                                                                      | [optional] |
| **client_metadata**           | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                                                                                                                                                                    | [optional] |
| **mode**                      | **str**                                                                         | indicates whether the flow is a WebSocket flow or a Redirect flow. This value is used in Vault to determine how to process the data flow request.                                  | [optional] |
| **redirect_uris**             | **List[str]**                                                                   | the URL that the user will be redirected to after the request has been processed; should be provided by the developer of the client application.Required only if mode is Redirect. | [optional] |
| **enable_idv_providers**      | **bool**                                                                        | enables third party IDV provider verification for the given configuration                                                                                                          | [optional] |

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
