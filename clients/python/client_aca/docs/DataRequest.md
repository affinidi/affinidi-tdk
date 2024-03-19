# DataRequest

the object conatins the presentation definition

## Properties

| Name                        | Type       | Description                 | Notes |
| --------------------------- | ---------- | --------------------------- | ----- |
| **presentation_definition** | **object** | the presentation definition |

## Example

```python
from affinidi_tdk_client_aca.models.data_request import DataRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DataRequest from a JSON string
data_request_instance = DataRequest.from_json(json)
# print the JSON string representation of the object
print DataRequest.to_json()

# convert the object into a dict
data_request_dict = data_request_instance.to_dict()
# create an instance of DataRequest from a dict
data_request_form_dict = data_request.from_dict(data_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
