# IssuanceConfigListResponse

## Properties

| Name               | Type                                                        | Description | Notes |
| ------------------ | ----------------------------------------------------------- | ----------- | ----- |
| **configurations** | [**List[IssuanceConfigMiniDto]**](IssuanceConfigMiniDto.md) |             |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.issuance_config_list_response import IssuanceConfigListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IssuanceConfigListResponse from a JSON string
issuance_config_list_response_instance = IssuanceConfigListResponse.from_json(json)
# print the JSON string representation of the object
print IssuanceConfigListResponse.to_json()

# convert the object into a dict
issuance_config_list_response_dict = issuance_config_list_response_instance.to_dict()
# create an instance of IssuanceConfigListResponse from a dict
issuance_config_list_response_from_dict = IssuanceConfigListResponse.from_dict(issuance_config_list_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
