# PrepareRequestCreatedData

## Properties

| Name               | Type    | Description                                                                                                        | Notes |
| ------------------ | ------- | ------------------------------------------------------------------------------------------------------------------ | ----- |
| **jwt**            | **str** |                                                                                                                    |
| **correlation_id** | **str** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow. |

## Example

```python
from affinidi_tdk_iota_client.models.prepare_request_created_data import PrepareRequestCreatedData

# TODO update the JSON string below
json = "{}"
# create an instance of PrepareRequestCreatedData from a JSON string
prepare_request_created_data_instance = PrepareRequestCreatedData.from_json(json)
# print the JSON string representation of the object
print PrepareRequestCreatedData.to_json()

# convert the object into a dict
prepare_request_created_data_dict = prepare_request_created_data_instance.to_dict()
# create an instance of PrepareRequestCreatedData from a dict
prepare_request_created_data_from_dict = PrepareRequestCreatedData.from_dict(prepare_request_created_data_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
