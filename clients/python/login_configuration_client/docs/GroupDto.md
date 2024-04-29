# GroupDto

## Properties

| Name              | Type    | Description                                    | Notes |
| ----------------- | ------- | ---------------------------------------------- | ----- |
| **ari**           | **str** | Group ari                                      |
| **project_id**    | **str** | Project id                                     |
| **group_name**    | **str** | name of the group, identifier within a project |
| **creation_date** | **str** | Group creation date                            |

## Example

```python
from affinidi_tdk_login_configuration_client.models.group_dto import GroupDto

# TODO update the JSON string below
json = "{}"
# create an instance of GroupDto from a JSON string
group_dto_instance = GroupDto.from_json(json)
# print the JSON string representation of the object
print GroupDto.to_json()

# convert the object into a dict
group_dto_dict = group_dto_instance.to_dict()
# create an instance of GroupDto from a dict
group_dto_form_dict = group_dto.from_dict(group_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
