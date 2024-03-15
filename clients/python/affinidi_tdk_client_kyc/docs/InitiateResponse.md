# InitiateResponse

initiateOtp operation response

## Properties

| Name        | Type    | Description | Notes      |
| ----------- | ------- | ----------- | ---------- |
| **message** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_kyc.models.initiate_response import InitiateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of InitiateResponse from a JSON string
initiate_response_instance = InitiateResponse.from_json(json)
# print the JSON string representation of the object
print InitiateResponse.to_json()

# convert the object into a dict
initiate_response_dict = initiate_response_instance.to_dict()
# create an instance of InitiateResponse from a dict
initiate_response_form_dict = initiate_response.from_dict(initiate_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
