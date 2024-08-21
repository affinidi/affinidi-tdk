# MissingHolderDidError

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
from affinidi_tdk_credential_issuance_client.models.missing_holder_did_error import MissingHolderDidError

# TODO update the JSON string below
json = "{}"
# create an instance of MissingHolderDidError from a JSON string
missing_holder_did_error_instance = MissingHolderDidError.from_json(json)
# print the JSON string representation of the object
print MissingHolderDidError.to_json()

# convert the object into a dict
missing_holder_did_error_dict = missing_holder_did_error_instance.to_dict()
# create an instance of MissingHolderDidError from a dict
missing_holder_did_error_from_dict = MissingHolderDidError.from_dict(missing_holder_did_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
