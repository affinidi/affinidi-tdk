# ProjectWithPolicyList

## Properties

| Name                   | Type                                                      | Description | Notes      |
| ---------------------- | --------------------------------------------------------- | ----------- | ---------- |
| **projects**           | [**List[ProjectWithPolicyDto]**](ProjectWithPolicyDto.md) |             |
| **last_evaluated_key** | **str**                                                   |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.project_with_policy_list import ProjectWithPolicyList

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectWithPolicyList from a JSON string
project_with_policy_list_instance = ProjectWithPolicyList.from_json(json)
# print the JSON string representation of the object
print ProjectWithPolicyList.to_json()

# convert the object into a dict
project_with_policy_list_dict = project_with_policy_list_instance.to_dict()
# create an instance of ProjectWithPolicyList from a dict
project_with_policy_list_from_dict = ProjectWithPolicyList.from_dict(project_with_policy_list_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
