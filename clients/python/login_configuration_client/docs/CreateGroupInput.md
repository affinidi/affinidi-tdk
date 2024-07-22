# CreateGroupInput

## Properties

| Name            | Type    | Description                                | Notes      |
| --------------- | ------- | ------------------------------------------ | ---------- |
| **group_name**  | **str** | name of the group for users, used as an id |
| **name**        | **str** |                                            | [optional] |
| **description** | **str** |                                            | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.create_group_input import CreateGroupInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateGroupInput from a JSON string
create_group_input_instance = CreateGroupInput.from_json(json)
# print the JSON string representation of the object
print CreateGroupInput.to_json()

# convert the object into a dict
create_group_input_dict = create_group_input_instance.to_dict()
# create an instance of CreateGroupInput from a dict
create_group_input_form_dict = create_group_input.from_dict(create_group_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
