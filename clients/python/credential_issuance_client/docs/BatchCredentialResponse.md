# BatchCredentialResponse

## Properties

| Name                     | Type                                                                                                            | Description                | Notes      |
| ------------------------ | --------------------------------------------------------------------------------------------------------------- | -------------------------- | ---------- |
| **credential_responses** | [**List[BatchCredentialResponseCredentialResponsesInner]**](BatchCredentialResponseCredentialResponsesInner.md) |                            |
| **c_nonce**              | **str**                                                                                                         |                            | [optional] |
| **c_nonce_expires_in**   | **int**                                                                                                         | Expiration time in seconds | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.batch_credential_response import BatchCredentialResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BatchCredentialResponse from a JSON string
batch_credential_response_instance = BatchCredentialResponse.from_json(json)
# print the JSON string representation of the object
print BatchCredentialResponse.to_json()

# convert the object into a dict
batch_credential_response_dict = batch_credential_response_instance.to_dict()
# create an instance of BatchCredentialResponse from a dict
batch_credential_response_from_dict = BatchCredentialResponse.from_dict(batch_credential_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
