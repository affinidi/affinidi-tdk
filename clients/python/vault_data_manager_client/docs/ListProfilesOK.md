# ListProfilesOK

## Properties

| Name      | Type                                                        | Description | Notes      |
| --------- | ----------------------------------------------------------- | ----------- | ---------- |
| **nodes** | [**List[PartialProfileNodeDto]**](PartialProfileNodeDto.md) |             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.list_profiles_ok import ListProfilesOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListProfilesOK from a JSON string
list_profiles_ok_instance = ListProfilesOK.from_json(json)
# print the JSON string representation of the object
print ListProfilesOK.to_json()

# convert the object into a dict
list_profiles_ok_dict = list_profiles_ok_instance.to_dict()
# create an instance of ListProfilesOK from a dict
list_profiles_ok_from_dict = ListProfilesOK.from_dict(list_profiles_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
