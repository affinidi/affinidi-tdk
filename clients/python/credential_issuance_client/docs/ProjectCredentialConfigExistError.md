# ProjectCredentialConfigExistError

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
from affinidi_tdk_credential_issuance_client.models.project_credential_config_exist_error import ProjectCredentialConfigExistError

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectCredentialConfigExistError from a JSON string
project_credential_config_exist_error_instance = ProjectCredentialConfigExistError.from_json(json)
# print the JSON string representation of the object
print ProjectCredentialConfigExistError.to_json()

# convert the object into a dict
project_credential_config_exist_error_dict = project_credential_config_exist_error_instance.to_dict()
# create an instance of ProjectCredentialConfigExistError from a dict
project_credential_config_exist_error_from_dict = ProjectCredentialConfigExistError.from_dict(project_credential_config_exist_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
