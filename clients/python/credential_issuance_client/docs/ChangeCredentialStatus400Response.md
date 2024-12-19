# ChangeCredentialStatus400Response

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
from affinidi_tdk_credential_issuance_client.models.change_credential_status400_response import ChangeCredentialStatus400Response

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeCredentialStatus400Response from a JSON string
change_credential_status400_response_instance = ChangeCredentialStatus400Response.from_json(json)
# print the JSON string representation of the object
print ChangeCredentialStatus400Response.to_json()

# convert the object into a dict
change_credential_status400_response_dict = change_credential_status400_response_instance.to_dict()
# create an instance of ChangeCredentialStatus400Response from a dict
change_credential_status400_response_from_dict = ChangeCredentialStatus400Response.from_dict(change_credential_status400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
