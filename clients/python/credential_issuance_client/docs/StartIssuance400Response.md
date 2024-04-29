# StartIssuance400Response

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
from affinidi_tdk_credential_issuance_client.models.start_issuance400_response import StartIssuance400Response

# TODO update the JSON string below
json = "{}"
# create an instance of StartIssuance400Response from a JSON string
start_issuance400_response_instance = StartIssuance400Response.from_json(json)
# print the JSON string representation of the object
print StartIssuance400Response.to_json()

# convert the object into a dict
start_issuance400_response_dict = start_issuance400_response_instance.to_dict()
# create an instance of StartIssuance400Response from a dict
start_issuance400_response_form_dict = start_issuance400_response.from_dict(start_issuance400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
