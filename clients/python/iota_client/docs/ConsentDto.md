# ConsentDto

## Properties

| Name           | Type    | Description                                                                                                                                                     | Notes |
| -------------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **project_id** | **str** |                                                                                                                                                                 |
| **id**         | **str** | id of the record                                                                                                                                                |
| **user_id**    | **str** | unique identifier of the user                                                                                                                                   |
| **vc_type**    | **str** | VC type of shared vc. If the actual VC has several VC types (excluding base types as VerifiableCredential) then for each of the a separate record will be added |
| **status**     | **str** |                                                                                                                                                                 |
| **updated_at** | **str** |                                                                                                                                                                 |

## Example

```python
from affinidi_tdk_iota_client.models.consent_dto import ConsentDto

# TODO update the JSON string below
json = "{}"
# create an instance of ConsentDto from a JSON string
consent_dto_instance = ConsentDto.from_json(json)
# print the JSON string representation of the object
print ConsentDto.to_json()

# convert the object into a dict
consent_dto_dict = consent_dto_instance.to_dict()
# create an instance of ConsentDto from a dict
consent_dto_form_dict = consent_dto.from_dict(consent_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
