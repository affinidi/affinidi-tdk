# PasskeyList

## Properties

| Name         | Type                                  | Description | Notes |
| ------------ | ------------------------------------- | ----------- | ----- |
| **passkeys** | [**List[PasskeyDto]**](PasskeyDto.md) |             |

## Example

```python
from affinidi_tdk_iam_client.models.passkey_list import PasskeyList

# TODO update the JSON string below
json = "{}"
# create an instance of PasskeyList from a JSON string
passkey_list_instance = PasskeyList.from_json(json)
# print the JSON string representation of the object
print PasskeyList.to_json()

# convert the object into a dict
passkey_list_dict = passkey_list_instance.to_dict()
# create an instance of PasskeyList from a dict
passkey_list_from_dict = PasskeyList.from_dict(passkey_list_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
