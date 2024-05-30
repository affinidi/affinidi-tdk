# PrepareRequestCreated

## Properties

| Name     | Type                                                          | Description | Notes |
| -------- | ------------------------------------------------------------- | ----------- | ----- |
| **data** | [**PrepareRequestCreatedData**](PrepareRequestCreatedData.md) |             |

## Example

```python
from affinidi_tdk_iota_client.models.prepare_request_created import PrepareRequestCreated

# TODO update the JSON string below
json = "{}"
# create an instance of PrepareRequestCreated from a JSON string
prepare_request_created_instance = PrepareRequestCreated.from_json(json)
# print the JSON string representation of the object
print PrepareRequestCreated.to_json()

# convert the object into a dict
prepare_request_created_dict = prepare_request_created_instance.to_dict()
# create an instance of PrepareRequestCreated from a dict
prepare_request_created_form_dict = prepare_request_created.from_dict(prepare_request_created_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
