# GetAccessOutput

## Properties

| Name            | Type                                  | Description                           | Notes |
| --------------- | ------------------------------------- | ------------------------------------- | ----- |
| **permissions** | [**List[Permission]**](Permission.md) | List of permissions currently granted |

## Example

```python
from affinidi_tdk_consumer_iam_client.models.get_access_output import GetAccessOutput

# TODO update the JSON string below
json = "{}"
# create an instance of GetAccessOutput from a JSON string
get_access_output_instance = GetAccessOutput.from_json(json)
# print the JSON string representation of the object
print GetAccessOutput.to_json()

# convert the object into a dict
get_access_output_dict = get_access_output_instance.to_dict()
# create an instance of GetAccessOutput from a dict
get_access_output_from_dict = GetAccessOutput.from_dict(get_access_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
