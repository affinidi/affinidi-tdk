# TypedPrincipalId

## Properties

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **principal_id** | **str** |             |

## Example

```python
from affinidi_tdk_iam_client.models.typed_principal_id import TypedPrincipalId

# TODO update the JSON string below
json = "{}"
# create an instance of TypedPrincipalId from a JSON string
typed_principal_id_instance = TypedPrincipalId.from_json(json)
# print the JSON string representation of the object
print TypedPrincipalId.to_json()

# convert the object into a dict
typed_principal_id_dict = typed_principal_id_instance.to_dict()
# create an instance of TypedPrincipalId from a dict
typed_principal_id_from_dict = TypedPrincipalId.from_dict(typed_principal_id_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
