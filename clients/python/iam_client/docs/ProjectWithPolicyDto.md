# ProjectWithPolicyDto

## Properties

| Name       | Type                          | Description | Notes |
| ---------- | ----------------------------- | ----------- | ----- |
| **id**     | **str**                       |             |
| **name**   | **str**                       |             |
| **policy** | [**PolicyDto**](PolicyDto.md) |             |

## Example

```python
from affinidi_tdk_iam_client.models.project_with_policy_dto import ProjectWithPolicyDto

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectWithPolicyDto from a JSON string
project_with_policy_dto_instance = ProjectWithPolicyDto.from_json(json)
# print the JSON string representation of the object
print ProjectWithPolicyDto.to_json()

# convert the object into a dict
project_with_policy_dto_dict = project_with_policy_dto_instance.to_dict()
# create an instance of ProjectWithPolicyDto from a dict
project_with_policy_dto_from_dict = ProjectWithPolicyDto.from_dict(project_with_policy_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
