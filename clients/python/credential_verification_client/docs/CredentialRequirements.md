# CredentialRequirements

Requirements of the VC

## Properties

| Name            | Type                                                                          | Description                      | Notes      |
| --------------- | ----------------------------------------------------------------------------- | -------------------------------- | ---------- |
| **type**        | **List[str]**                                                                 | Type list of the VC requirements |
| **constraints** | [**CredentialRequirementsConstraints**](CredentialRequirementsConstraints.md) |                                  | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.credential_requirements import CredentialRequirements

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialRequirements from a JSON string
credential_requirements_instance = CredentialRequirements.from_json(json)
# print the JSON string representation of the object
print CredentialRequirements.to_json()

# convert the object into a dict
credential_requirements_dict = credential_requirements_instance.to_dict()
# create an instance of CredentialRequirements from a dict
credential_requirements_form_dict = credential_requirements.from_dict(credential_requirements_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
