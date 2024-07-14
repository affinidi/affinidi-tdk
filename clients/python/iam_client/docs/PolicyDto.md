# PolicyDto

## Properties

| Name             | Type                                                  | Description | Notes      |
| ---------------- | ----------------------------------------------------- | ----------- | ---------- |
| **name**         | **str**                                               |             | [optional] |
| **description**  | **str**                                               |             | [optional] |
| **principal_id** | **str**                                               |             | [optional] |
| **project_id**   | **str**                                               |             | [optional] |
| **version**      | **str**                                               |             |
| **statement**    | [**List[PolicyStatementDto]**](PolicyStatementDto.md) |             |

## Example

```python
from affinidi_tdk_iam_client.models.policy_dto import PolicyDto

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyDto from a JSON string
policy_dto_instance = PolicyDto.from_json(json)
# print the JSON string representation of the object
print PolicyDto.to_json()

# convert the object into a dict
policy_dto_dict = policy_dto_instance.to_dict()
# create an instance of PolicyDto from a dict
policy_dto_form_dict = policy_dto.from_dict(policy_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
