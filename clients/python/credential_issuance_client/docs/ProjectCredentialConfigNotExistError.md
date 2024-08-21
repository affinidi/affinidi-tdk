# ProjectCredentialConfigNotExistError

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
from affinidi_tdk_credential_issuance_client.models.project_credential_config_not_exist_error import ProjectCredentialConfigNotExistError

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectCredentialConfigNotExistError from a JSON string
project_credential_config_not_exist_error_instance = ProjectCredentialConfigNotExistError.from_json(json)
# print the JSON string representation of the object
print ProjectCredentialConfigNotExistError.to_json()

# convert the object into a dict
project_credential_config_not_exist_error_dict = project_credential_config_not_exist_error_instance.to_dict()
# create an instance of ProjectCredentialConfigNotExistError from a dict
project_credential_config_not_exist_error_from_dict = ProjectCredentialConfigNotExistError.from_dict(project_credential_config_not_exist_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
