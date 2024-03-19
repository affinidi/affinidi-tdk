# MissingDataSchemasDto

The name of $.path that is missing from the vault

## Properties

| Name            | Type       | Description                         | Notes      |
| --------------- | ---------- | ----------------------------------- | ---------- |
| **schema_list** | **object** | the name of missing schema in vault | [optional] |

## Example

```python
from affinidi_tdk_client_aca.models.missing_data_schemas_dto import MissingDataSchemasDto

# TODO update the JSON string below
json = "{}"
# create an instance of MissingDataSchemasDto from a JSON string
missing_data_schemas_dto_instance = MissingDataSchemasDto.from_json(json)
# print the JSON string representation of the object
print MissingDataSchemasDto.to_json()

# convert the object into a dict
missing_data_schemas_dto_dict = missing_data_schemas_dto_instance.to_dict()
# create an instance of MissingDataSchemasDto from a dict
missing_data_schemas_dto_form_dict = missing_data_schemas_dto.from_dict(missing_data_schemas_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
