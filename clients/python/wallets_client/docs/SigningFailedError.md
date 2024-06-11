# SigningFailedError

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ServiceErrorResponseDetailsInner]**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.signing_failed_error import SigningFailedError

# TODO update the JSON string below
json = "{}"
# create an instance of SigningFailedError from a JSON string
signing_failed_error_instance = SigningFailedError.from_json(json)
# print the JSON string representation of the object
print SigningFailedError.to_json()

# convert the object into a dict
signing_failed_error_dict = signing_failed_error_instance.to_dict()
# create an instance of SigningFailedError from a dict
signing_failed_error_form_dict = signing_failed_error.from_dict(signing_failed_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
