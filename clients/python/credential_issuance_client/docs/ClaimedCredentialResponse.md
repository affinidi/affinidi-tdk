# ClaimedCredentialResponse

Response for getting the claimed VC

## Properties

| Name            | Type                        | Description                              | Notes      |
| --------------- | --------------------------- | ---------------------------------------- | ---------- |
| **credential**  | **Dict[str, object]**       | claimed credential for a single issuance | [optional] |
| **credentials** | **List[Dict[str, object]]** | claimed credentials for batch issuances  | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.claimed_credential_response import ClaimedCredentialResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ClaimedCredentialResponse from a JSON string
claimed_credential_response_instance = ClaimedCredentialResponse.from_json(json)
# print the JSON string representation of the object
print ClaimedCredentialResponse.to_json()

# convert the object into a dict
claimed_credential_response_dict = claimed_credential_response_instance.to_dict()
# create an instance of ClaimedCredentialResponse from a dict
claimed_credential_response_from_dict = ClaimedCredentialResponse.from_dict(claimed_credential_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
