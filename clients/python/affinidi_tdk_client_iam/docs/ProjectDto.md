# ProjectDto

## Properties

| Name            | Type    | Description                                                            | Notes      |
| --------------- | ------- | ---------------------------------------------------------------------- | ---------- |
| **id**          | **str** |                                                                        |
| **name**        | **str** |                                                                        |
| **description** | **str** |                                                                        | [optional] |
| **created_at**  | **str** | creation date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13    | [optional] |
| **updated_at**  | **str** | last update date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13 | [optional] |

## Example

```python
from affinidi_tdk_client_iam.models.project_dto import ProjectDto

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectDto from a JSON string
project_dto_instance = ProjectDto.from_json(json)
# print the JSON string representation of the object
print ProjectDto.to_json()

# convert the object into a dict
project_dto_dict = project_dto_instance.to_dict()
# create an instance of ProjectDto from a dict
project_dto_form_dict = project_dto.from_dict(project_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
