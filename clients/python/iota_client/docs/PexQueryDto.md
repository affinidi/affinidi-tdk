# PexQueryDto

## Properties

| Name                  | Type    | Description                            | Notes |
| --------------------- | ------- | -------------------------------------- | ----- |
| **ari**               | **str** |                                        |
| **query_id**          | **str** |                                        |
| **name**              | **str** |                                        |
| **description**       | **str** |                                        |
| **configuration_ari** | **str** |                                        |
| **vp_definition**     | **str** | VP definition in JSON stringify format |

## Example

```python
from affinidi_tdk_iota_client.models.pex_query_dto import PexQueryDto

# TODO update the JSON string below
json = "{}"
# create an instance of PexQueryDto from a JSON string
pex_query_dto_instance = PexQueryDto.from_json(json)
# print the JSON string representation of the object
print PexQueryDto.to_json()

# convert the object into a dict
pex_query_dto_dict = pex_query_dto_instance.to_dict()
# create an instance of PexQueryDto from a dict
pex_query_dto_from_dict = PexQueryDto.from_dict(pex_query_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
