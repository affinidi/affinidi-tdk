# PdStatus

## Properties

| Name          | Type    | Description | Notes      |
| ------------- | ------- | ----------- | ---------- |
| **directive** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.pd_status import PdStatus

# TODO update the JSON string below
json = "{}"
# create an instance of PdStatus from a JSON string
pd_status_instance = PdStatus.from_json(json)
# print the JSON string representation of the object
print PdStatus.to_json()

# convert the object into a dict
pd_status_dict = pd_status_instance.to_dict()
# create an instance of PdStatus from a dict
pd_status_form_dict = pd_status.from_dict(pd_status_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
