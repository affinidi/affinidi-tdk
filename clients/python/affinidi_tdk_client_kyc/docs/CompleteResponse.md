# CompleteResponse

## Properties

| Name         | Type       | Description | Notes      |
| ------------ | ---------- | ----------- | ---------- |
| **email_vc** | **object** |             | [optional] |

## Example

```python
from affinidi_tdk_client_kyc.models.complete_response import CompleteResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompleteResponse from a JSON string
complete_response_instance = CompleteResponse.from_json(json)
# print the JSON string representation of the object
print CompleteResponse.to_json()

# convert the object into a dict
complete_response_dict = complete_response_instance.to_dict()
# create an instance of CompleteResponse from a dict
complete_response_form_dict = complete_response.from_dict(complete_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
