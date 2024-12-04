# GetStatusListResultDto

DTO contains revocation list credential

## Properties

| Name                           | Type       | Description | Notes |
| ------------------------------ | ---------- | ----------- | ----- |
| **revocation_list_credential** | **object** |             |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.get_status_list_result_dto import GetStatusListResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of GetStatusListResultDto from a JSON string
get_status_list_result_dto_instance = GetStatusListResultDto.from_json(json)
# print the JSON string representation of the object
print GetStatusListResultDto.to_json()

# convert the object into a dict
get_status_list_result_dto_dict = get_status_list_result_dto_instance.to_dict()
# create an instance of GetStatusListResultDto from a dict
get_status_list_result_dto_from_dict = GetStatusListResultDto.from_dict(get_status_list_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
