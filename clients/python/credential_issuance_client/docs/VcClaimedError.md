# VcClaimedError

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ActionForbiddenErrorDetailsInner]**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.vc_claimed_error import VcClaimedError

# TODO update the JSON string below
json = "{}"
# create an instance of VcClaimedError from a JSON string
vc_claimed_error_instance = VcClaimedError.from_json(json)
# print the JSON string representation of the object
print VcClaimedError.to_json()

# convert the object into a dict
vc_claimed_error_dict = vc_claimed_error_instance.to_dict()
# create an instance of VcClaimedError from a dict
vc_claimed_error_form_dict = vc_claimed_error.from_dict(vc_claimed_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
