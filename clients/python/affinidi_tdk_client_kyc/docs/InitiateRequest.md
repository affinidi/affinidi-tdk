# InitiateRequest

## Properties

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **email** | **str** |             |

## Example

```python
from affinidi_tdk_client_kyc.models.initiate_request import InitiateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of InitiateRequest from a JSON string
initiate_request_instance = InitiateRequest.from_json(json)
# print the JSON string representation of the object
print InitiateRequest.to_json()

# convert the object into a dict
initiate_request_dict = initiate_request_instance.to_dict()
# create an instance of InitiateRequest from a dict
initiate_request_form_dict = initiate_request.from_dict(initiate_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
