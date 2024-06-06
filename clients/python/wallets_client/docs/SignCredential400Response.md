# SignCredential400Response

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
from affinidi_tdk_wallets_client.models.sign_credential400_response import SignCredential400Response

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredential400Response from a JSON string
sign_credential400_response_instance = SignCredential400Response.from_json(json)
# print the JSON string representation of the object
print SignCredential400Response.to_json()

# convert the object into a dict
sign_credential400_response_dict = sign_credential400_response_instance.to_dict()
# create an instance of SignCredential400Response from a dict
sign_credential400_response_form_dict = sign_credential400_response.from_dict(sign_credential400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
