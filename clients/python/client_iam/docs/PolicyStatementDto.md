# PolicyStatementDto

## Properties

| Name          | Type          | Description | Notes |
| ------------- | ------------- | ----------- | ----- |
| **action**    | **List[str]** |             |
| **effect**    | **str**       |             |
| **principal** | **List[str]** |             |
| **resource**  | **List[str]** |             |

## Example

```python
from affinidi_tdk_client_iam.models.policy_statement_dto import PolicyStatementDto

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyStatementDto from a JSON string
policy_statement_dto_instance = PolicyStatementDto.from_json(json)
# print the JSON string representation of the object
print PolicyStatementDto.to_json()

# convert the object into a dict
policy_statement_dto_dict = policy_statement_dto_instance.to_dict()
# create an instance of PolicyStatementDto from a dict
policy_statement_dto_form_dict = policy_statement_dto.from_dict(policy_statement_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
