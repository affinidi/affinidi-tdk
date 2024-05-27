# ListLoggedConsentsOK

## Properties

| Name                   | Type                                  | Description | Notes      |
| ---------------------- | ------------------------------------- | ----------- | ---------- |
| **consents**           | [**List[ConsentDto]**](ConsentDto.md) |             |
| **last_evaluated_key** | **str**                               |             | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.list_logged_consents_ok import ListLoggedConsentsOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListLoggedConsentsOK from a JSON string
list_logged_consents_ok_instance = ListLoggedConsentsOK.from_json(json)
# print the JSON string representation of the object
print ListLoggedConsentsOK.to_json()

# convert the object into a dict
list_logged_consents_ok_dict = list_logged_consents_ok_instance.to_dict()
# create an instance of ListLoggedConsentsOK from a dict
list_logged_consents_ok_form_dict = list_logged_consents_ok.from_dict(list_logged_consents_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
