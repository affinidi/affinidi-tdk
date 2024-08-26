# IssuanceStateResponse

## Properties

| Name            | Type    | Description                                                                                                                                     | Notes |
| --------------- | ------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **issuance_id** | **str** | Website&#39;s internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one. |
| **status**      | **str** | String describing the status of the issuance                                                                                                    |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.issuance_state_response import IssuanceStateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IssuanceStateResponse from a JSON string
issuance_state_response_instance = IssuanceStateResponse.from_json(json)
# print the JSON string representation of the object
print IssuanceStateResponse.to_json()

# convert the object into a dict
issuance_state_response_dict = issuance_state_response_instance.to_dict()
# create an instance of IssuanceStateResponse from a dict
issuance_state_response_from_dict = IssuanceStateResponse.from_dict(issuance_state_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
