# ClaimedCredentialListResponse

List of claimed credential

## Properties

| Name                   | Type                        | Description                                 | Notes      |
| ---------------------- | --------------------------- | ------------------------------------------- | ---------- |
| **credentials**        | **List[Dict[str, object]]** | list of credentials                         | [optional] |
| **last_evaluated_key** | **str**                     | for pagination to fetch next set of records | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.claimed_credential_list_response import ClaimedCredentialListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ClaimedCredentialListResponse from a JSON string
claimed_credential_list_response_instance = ClaimedCredentialListResponse.from_json(json)
# print the JSON string representation of the object
print ClaimedCredentialListResponse.to_json()

# convert the object into a dict
claimed_credential_list_response_dict = claimed_credential_list_response_instance.to_dict()
# create an instance of ClaimedCredentialListResponse from a dict
claimed_credential_list_response_from_dict = ClaimedCredentialListResponse.from_dict(claimed_credential_list_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
