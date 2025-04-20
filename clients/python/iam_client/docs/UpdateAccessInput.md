# UpdateAccessInput

## Properties

| Name       | Type                                  | Description                     | Notes |
| ---------- | ------------------------------------- | ------------------------------- | ----- |
| **rights** | [**List[RightsEnum]**](RightsEnum.md) | List of rights to update access |

## Example

```python
from affinidi_tdk_iam_client.models.update_access_input import UpdateAccessInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAccessInput from a JSON string
update_access_input_instance = UpdateAccessInput.from_json(json)
# print the JSON string representation of the object
print UpdateAccessInput.to_json()

# convert the object into a dict
update_access_input_dict = update_access_input_instance.to_dict()
# create an instance of UpdateAccessInput from a dict
update_access_input_from_dict = UpdateAccessInput.from_dict(update_access_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
