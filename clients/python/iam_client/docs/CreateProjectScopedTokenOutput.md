# CreateProjectScopedTokenOutput

## Properties

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **access_token** | **str** |             |
| **expires_in**   | **int** |             |
| **scope**        | **str** |             |

## Example

```python
from affinidi_tdk_iam_client.models.create_project_scoped_token_output import CreateProjectScopedTokenOutput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateProjectScopedTokenOutput from a JSON string
create_project_scoped_token_output_instance = CreateProjectScopedTokenOutput.from_json(json)
# print the JSON string representation of the object
print CreateProjectScopedTokenOutput.to_json()

# convert the object into a dict
create_project_scoped_token_output_dict = create_project_scoped_token_output_instance.to_dict()
# create an instance of CreateProjectScopedTokenOutput from a dict
create_project_scoped_token_output_form_dict = create_project_scoped_token_output.from_dict(create_project_scoped_token_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
