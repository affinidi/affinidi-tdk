# ListIssuanceResponse

## Properties

| Name             | Type          | Description                               | Notes |
| ---------------- | ------------- | ----------------------------------------- | ----- |
| **issuance_ids** | **List[str]** | The list of all issuances for the Project |

## Example

```python
from affinidi_tdk_client_cis.models.list_issuance_response import ListIssuanceResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListIssuanceResponse from a JSON string
list_issuance_response_instance = ListIssuanceResponse.from_json(json)
# print the JSON string representation of the object
print ListIssuanceResponse.to_json()

# convert the object into a dict
list_issuance_response_dict = list_issuance_response_instance.to_dict()
# create an instance of ListIssuanceResponse from a dict
list_issuance_response_form_dict = list_issuance_response.from_dict(list_issuance_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
