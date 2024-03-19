# CompleteRequest

completeOtp operation request

## Properties

| Name                  | Type    | Description | Notes |
| --------------------- | ------- | ----------- | ----- |
| **email**             | **str** |             |
| **did**               | **str** |             |
| **confirmation_code** | **str** |             |

## Example

```python
from affinidi_tdk_client_kyc.models.complete_request import CompleteRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CompleteRequest from a JSON string
complete_request_instance = CompleteRequest.from_json(json)
# print the JSON string representation of the object
print CompleteRequest.to_json()

# convert the object into a dict
complete_request_dict = complete_request_instance.to_dict()
# create an instance of CompleteRequest from a dict
complete_request_form_dict = complete_request.from_dict(complete_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
