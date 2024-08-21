# GroupUserMappingDto

## Properties

| Name         | Type    | Description                         | Notes |
| ------------ | ------- | ----------------------------------- | ----- |
| **user_id**  | **str** | Unique identifier of the user       |
| **added_at** | **str** | Group to user mapping creation date |

## Example

```python
from affinidi_tdk_login_configuration_client.models.group_user_mapping_dto import GroupUserMappingDto

# TODO update the JSON string below
json = "{}"
# create an instance of GroupUserMappingDto from a JSON string
group_user_mapping_dto_instance = GroupUserMappingDto.from_json(json)
# print the JSON string representation of the object
print GroupUserMappingDto.to_json()

# convert the object into a dict
group_user_mapping_dto_dict = group_user_mapping_dto_instance.to_dict()
# create an instance of GroupUserMappingDto from a dict
group_user_mapping_dto_from_dict = GroupUserMappingDto.from_dict(group_user_mapping_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
