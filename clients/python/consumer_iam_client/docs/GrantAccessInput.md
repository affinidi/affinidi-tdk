# GrantAccessInput

## Properties

| Name            | Type                                  | Description         | Notes |
| --------------- | ------------------------------------- | ------------------- | ----- |
| **permissions** | [**List[Permission]**](Permission.md) | List of permissions |

## Example

```python
from affinidi_tdk_consumer_iam_client.models.grant_access_input import GrantAccessInput

# TODO update the JSON string below
json = "{}"
# create an instance of GrantAccessInput from a JSON string
grant_access_input_instance = GrantAccessInput.from_json(json)
# print the JSON string representation of the object
print GrantAccessInput.to_json()

# convert the object into a dict
grant_access_input_dict = grant_access_input_instance.to_dict()
# create an instance of GrantAccessInput from a dict
grant_access_input_from_dict = GrantAccessInput.from_dict(grant_access_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
