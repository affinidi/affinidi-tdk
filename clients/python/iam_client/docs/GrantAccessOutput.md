# GrantAccessOutput

## Properties

| Name         | Type     | Description                            | Notes      |
| ------------ | -------- | -------------------------------------- | ---------- |
| **success**  | **bool** |                                        |
| **grant_id** | **str**  | Unique identifier for the access grant | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.grant_access_output import GrantAccessOutput

# TODO update the JSON string below
json = "{}"
# create an instance of GrantAccessOutput from a JSON string
grant_access_output_instance = GrantAccessOutput.from_json(json)
# print the JSON string representation of the object
print GrantAccessOutput.to_json()

# convert the object into a dict
grant_access_output_dict = grant_access_output_instance.to_dict()
# create an instance of GrantAccessOutput from a dict
grant_access_output_from_dict = GrantAccessOutput.from_dict(grant_access_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
