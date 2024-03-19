# GetKeyResultDto

DTO contains key record

## Properties

| Name                | Type    | Description                                | Notes      |
| ------------------- | ------- | ------------------------------------------ | ---------- |
| **id**              | **str** | id of the key record                       | [optional] |
| **project_id**      | **str** | id of the project                          | [optional] |
| **ari**             | **str** | ARI of the key record                      | [optional] |
| **algorithm**       | **str** | algorithm of the key record                | [optional] |
| **did_method**      | **str** | did method of the key record               | [optional] |
| **derivation_path** | **str** | derivation path of the key record          | [optional] |
| **seed_id**         | **str** | id of the parent seed record               | [optional] |
| **seed_ari**        | **str** | ARI of the parent seed record              | [optional] |
| **public_key_hex**  | **str** | public key of the key config in HEX format | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.get_key_result_dto import GetKeyResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of GetKeyResultDto from a JSON string
get_key_result_dto_instance = GetKeyResultDto.from_json(json)
# print the JSON string representation of the object
print GetKeyResultDto.to_json()

# convert the object into a dict
get_key_result_dto_dict = get_key_result_dto_instance.to_dict()
# create an instance of GetKeyResultDto from a dict
get_key_result_dto_form_dict = get_key_result_dto.from_dict(get_key_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
