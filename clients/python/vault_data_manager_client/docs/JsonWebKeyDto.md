# JsonWebKeyDto

## Properties

| Name    | Type    | Description | Notes      |
| ------- | ------- | ----------- | ---------- |
| **kid** | **str** |             |
| **kty** | **str** |             |
| **n**   | **str** |             | [optional] |
| **e**   | **str** |             | [optional] |
| **x**   | **str** |             | [optional] |
| **y**   | **str** |             | [optional] |
| **crv** | **str** |             | [optional] |
| **alg** | **str** |             |
| **use** | **str** |             |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.json_web_key_dto import JsonWebKeyDto

# TODO update the JSON string below
json = "{}"
# create an instance of JsonWebKeyDto from a JSON string
json_web_key_dto_instance = JsonWebKeyDto.from_json(json)
# print the JSON string representation of the object
print JsonWebKeyDto.to_json()

# convert the object into a dict
json_web_key_dto_dict = json_web_key_dto_instance.to_dict()
# create an instance of JsonWebKeyDto from a dict
json_web_key_dto_from_dict = JsonWebKeyDto.from_dict(json_web_key_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
