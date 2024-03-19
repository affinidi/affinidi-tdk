# CreateProjectScopedTokenInput

## Properties

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **project_id** | **str** |             |

## Example

```python
from affinidi_tdk_client_iam.models.create_project_scoped_token_input import CreateProjectScopedTokenInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateProjectScopedTokenInput from a JSON string
create_project_scoped_token_input_instance = CreateProjectScopedTokenInput.from_json(json)
# print the JSON string representation of the object
print CreateProjectScopedTokenInput.to_json()

# convert the object into a dict
create_project_scoped_token_input_dict = create_project_scoped_token_input_instance.to_dict()
# create an instance of CreateProjectScopedTokenInput from a dict
create_project_scoped_token_input_form_dict = create_project_scoped_token_input.from_dict(create_project_scoped_token_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
