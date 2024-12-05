# ConsentDto

## Properties

| Name            | Type    | Description                                                                                                                           | Notes |
| --------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **project_id**  | **str** | The ID of the project.                                                                                                                |
| **id**          | **str** | Unique identifier for the record.                                                                                                     |
| **user_id**     | **str** | Unique identifier for the user.                                                                                                       |
| **vc_type**     | **str** | Type of the VC shared by the user. It creates a consent record for each VC type shared except for the base type VerifiableCredential. |
| **status**      | **str** | Status of the consent.                                                                                                                |
| **modified_at** | **str** |                                                                                                                                       |
| **modified_by** | **str** |                                                                                                                                       |
| **created_at**  | **str** |                                                                                                                                       |
| **created_by**  | **str** |                                                                                                                                       |

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
consent_dto_from_dict = ConsentDto.from_dict(consent_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
