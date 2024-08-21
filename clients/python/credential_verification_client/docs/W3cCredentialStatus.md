# W3cCredentialStatus

## Properties

| Name                           | Type    | Description | Notes |
| ------------------------------ | ------- | ----------- | ----- |
| **id**                         | **str** |             |
| **type**                       | **str** |             |
| **revocation_list_index**      | **str** |             |
| **revocation_list_credential** | **str** |             |

## Example

```python
from affinidi_tdk_credential_verification_client.models.w3c_credential_status import W3cCredentialStatus

# TODO update the JSON string below
json = "{}"
# create an instance of W3cCredentialStatus from a JSON string
w3c_credential_status_instance = W3cCredentialStatus.from_json(json)
# print the JSON string representation of the object
print W3cCredentialStatus.to_json()

# convert the object into a dict
w3c_credential_status_dict = w3c_credential_status_instance.to_dict()
# create an instance of W3cCredentialStatus from a dict
w3c_credential_status_from_dict = W3cCredentialStatus.from_dict(w3c_credential_status_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
