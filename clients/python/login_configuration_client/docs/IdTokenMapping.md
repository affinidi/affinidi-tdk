# IdTokenMapping

Fields name/path mapping between the vp_token and the id_token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

## Example

```python
from affinidi_tdk_login_configuration_client.models.id_token_mapping import IdTokenMapping

# TODO update the JSON string below
json = "{}"
# create an instance of IdTokenMapping from a JSON string
id_token_mapping_instance = IdTokenMapping.from_json(json)
# print the JSON string representation of the object
print IdTokenMapping.to_json()

# convert the object into a dict
id_token_mapping_dict = id_token_mapping_instance.to_dict()
# create an instance of IdTokenMapping from a dict
id_token_mapping_from_dict = IdTokenMapping.from_dict(id_token_mapping_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
