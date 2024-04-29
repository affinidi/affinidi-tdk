# WhoamiDto

## Properties

| Name               | Type    | Description | Notes |
| ------------------ | ------- | ----------- | ----- |
| **principal_id**   | **str** |             |
| **principal_type** | **str** |             |

## Example

```python
from affinidi_tdk_iam_client.models.whoami_dto import WhoamiDto

# TODO update the JSON string below
json = "{}"
# create an instance of WhoamiDto from a JSON string
whoami_dto_instance = WhoamiDto.from_json(json)
# print the JSON string representation of the object
print WhoamiDto.to_json()

# convert the object into a dict
whoami_dto_dict = whoami_dto_instance.to_dict()
# create an instance of WhoamiDto from a dict
whoami_dto_form_dict = whoami_dto.from_dict(whoami_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
